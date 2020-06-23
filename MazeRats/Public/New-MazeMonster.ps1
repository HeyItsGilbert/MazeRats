function New-MazeMonster {
    param(
        [Parameter(Mandatory = $true,
            HelpMessage = "Weak, Typical, Tough, Hulking, or Colossal")]
        [Health]$Health,
        [Parameter(Mandatory = $true,
            HelpMessage = "Unarmored, LightProtection, ModerateProtection," +
            " HeavyProtection, or NighImpervious")]
        [Armor]$Armor,
        [Parameter(Mandatory = $true,
            HelpMessage = "Untrained, Trained, Dangerous, Masterful, orLethal")]
        [AttackBonus]$AttackBonus,
        [Parameter(Mandatory = $true,
            HelpMessage = "Weak, Average, Strong, Powerful, or Monstrous")]
        [StrBonus]$Strength,
        [Parameter(Mandatory = $true,
            HelpMessage = "Slow, Average, Nimble, Swift, or Blurred")]
        [DexBonus]$Dexterity,
        [Parameter(Mandatory = $true,
            HelpMessage = "Dimwitted, Average, Clever, Brilliant, or Genius")]
        [WilBonus]$Will,
        [MonsterBase]
        $MonsterBase = ([Enum]::GetValues([MonsterBase]) | Get-Random),
        [String]$Feature,
        [String]$Trait,
        [String]$Ability
    )
    $base = [MazeMonster]::new(
        $Health,
        $Armor,
        $AttackBonus,
        $Strength,
        $Dexterity,
        $Will)

    switch ($MonsterBase) {
        'Aerial' { $base.GetAerial() }
        'Terrestrial' { $base.GetTerrestrial() }
        'Aquatic' { $base.GetAquatic() }
    }
    if ($Feature) { $base.Feature = $Feature } else { $base.GetFeature() }
    if ($Trait) { $base.Trait = $Trait } else { $base.GetTrait() }
    if ($Ability) { $base.Ability = $Ability } else { $base.GetAbility() }

    $inputs = @(
        'Health',
        'Armor',
        'AttackBonus',
        'Strength',
        'Dexterity',
        'Will',
        'MonsterBase',
        'Feature',
        'Trait',
        'Ability'
    ) | ForEach-Object { "-{0} {1} " -F $_, (Get-Variable -ValueOnly $_) }
    Write-Verbose "New-MazeMonster $inputs"

    return $base
}
