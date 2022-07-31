<#
.SYNOPSIS
  Bump a players ability
.DESCRIPTION
  If a player has gained enough skill in an ability, you can bump their total.
.EXAMPLE
  Complete-AbilityBump -Player $P  -Ability Strength

  Increasing player ($p) strength ability. If the player has more ability points
  you will be prompted.
.PARAMETER Player
  This should be a player object created by New-MazeRat
.PARAMETER Ability
  An ability to bump (Dexterity, Strength, or Will)
#>
function Complete-AbilityBump {
  [CmdletBinding()]
  param (
    [MazeRat]
    $Player,
    [Abilities]
    $Ability
  )
  Write-Debug ('PC: {0}' -f $Player)
  Write-Debug ('Ability: {0}' -f $Ability)
  # Check if there are any available points to be spent
  if ($Player.AbilityPoints -eq 0) {
    Write-Host 'No ability points available to spend.'
    return
  } elseif ($null -ne $Ability) {
    Write-Debug 'One ability mentioned. Bumping just that.'
    # If one ability given then spend one point on it
    $Player.AbilityBump($Ability)
  } else {
    Write-Debug 'No ability mentioned. Lets loop and ask.'
    # Grab available points and loop until spent
    for ($Player.AbilityPoints -gt 1) {
      Write-Debug ('Point: {0}' -f $Player.AbilityPoints)
      # Prompt for which ability bump
      do {
        $a = Read-Host 'Which ability? Dexterity, Strength, Will'
      }
      while ([Abilities].GetEnumNames() -notcontains $a)
      $Player.AbilityBump($a)
      if ($Player.AbilityPoints -gt 1) {
        Write-Host 'You still have points to spend!'
      }
    }
  }
}
