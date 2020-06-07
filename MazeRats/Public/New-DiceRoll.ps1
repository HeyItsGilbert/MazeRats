function New-DiceRoll {
    <#
    .SYNOPSIS
        Creates a dice roll. D6 by default.
    .DESCRIPTION
        Returns a random number
    .EXAMPLE
        PS C:\> New-DiceRoll
        Returns an int which can be used within scripts, or by PC's or GM's.
    .INPUTS
        Inputs (if any)
    .OUTPUTS
        Integar
    .NOTES
        General notes
    #>
    $res = Get-Random -Maximum 6
    Write-Verbose "Rolled a $res"
    return $res
}
