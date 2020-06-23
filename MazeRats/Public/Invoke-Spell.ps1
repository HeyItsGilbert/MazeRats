function Invoke-Spell {
    param (
        [MazeRat]
        $Player,
        [Magic]
        $Spell
    )
    # Deal with string version of spell
    # Split on spaces since all tables are single word
    #$formula = $spell.Split(' ')

    if ($Spell -notin $Player.Spells) {
        Write-Host ("{0} doesn't know {1}" -F $Player.Name, $Spell)
        Write-Host "They do know:"
        foreach ($Spell in $Player.Spells) {
            Write-Host " - $Spell"
        }
    } else {
        $Player.Spells.Remove($Spell)
        Write-Host ("{0} casts {1}!" -F $Player.Name, $Spell)
    }
}
