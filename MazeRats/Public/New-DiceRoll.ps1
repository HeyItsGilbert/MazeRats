function New-DiceRoll {
    $res = Get-Random -Maximum 6
    Write-Verbose "Rolled a $res"
    return $res
}
