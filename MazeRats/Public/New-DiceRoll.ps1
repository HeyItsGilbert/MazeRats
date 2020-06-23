function New-DiceRoll {
    [CmdletBinding()]
    param (
        [Dice]
        $Dice
    )
    $res = $Dice.NewDiceRoll()
    Write-Verbose "Rolled a $res"
    if ($Dice.IsCriticalHit($res)) {
        Write-Host "Success! Critical Hit!"
    }
    if ($Dice.IsCriticalMiss($res)) {
        Write-Host "Oh no! Critical Miss!"
    }
    return $res
}
