function Invoke-Spell {
    param (
        [MazeRat]
        $Player,
        [String]
        $Spell
    )
    if ($Spell -notin $Player.Spells) {
        Write-Host ("{0} doesn't know that spell..." -F $Player.Name)
        Write-Host "They do know:"
        foreach ($Spell in $Player.Spells) {
            Write-Host " - $Spell"
        }
    } else {
        $Player.Spells.Remove($Spell)
        Write-Host ("{0} casts {1}!" -F $Player.Name, $Spell)
    }
}
