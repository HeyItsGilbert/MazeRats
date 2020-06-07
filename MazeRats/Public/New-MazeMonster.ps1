function New-MazeMonster {
    <#
    .SYNOPSIS
        Creates a new monster for your encounters.
    .DESCRIPTION
        Randomly generates a monsters.
    .EXAMPLE
        PS> New-MazeMonster

        Returns a MazeMonster
    #>
    param(
        [Parameter(Mandatory=$true)]
        [Health]$Health,
        [Parameter(Mandatory=$true)]
        [Armor]$Armor,
        [Parameter(Mandatory=$true)]
        [AttackBonus]$AttackBonus,
        [Parameter(Mandatory=$true)]
        [StrBonus]$Strength,
        [Parameter(Mandatory=$true)]
        [DexBonus]$Dexterity,
        [Parameter(Mandatory=$true)]
        [WilBonus]$Will,
        [MonsterBase]
        $MonsterBase = ([Enum]::GetValues([MonsterBase]) | Get-Random),
        [String]$Feature,
        [String]$Trait,
        [String]$Ability
    )
    $base = [MazeMonster]::new($Health, $Armor, $AttackBonus, $Strength, $Dexterity, $Will)

    switch ($MonsterBase) {
        'Aerial' { $base.GetAerial() }
        'Terrestrial' { $base.GetTerrestrial() }
        'Aquatic' { $base.GetAquatic() }
    }
    if ($Feature) { $base.Feature = $Feature } else { $base.GetFeature()}
    if ($Trait) { $base.Trait = $Trait } else { $base.GetTrait()}
    if ($Ability) { $base.Ability = $Ability } else { $base.GetAbility()}
    return $base

}
