function Add-XP {
    param (
        [MazeRat]
        $Player,
        [Int16]
        $XP
    )
    Write-Host ("Total XP: {0}" -f $Player.GainXP($XP))
}
