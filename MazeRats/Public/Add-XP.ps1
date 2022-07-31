<#
.SYNOPSIS
  Add experience points to a player.
.DESCRIPTION
  Given a player and XP gained, it will add it to the existing points and if
  approriate level the player up.
.EXAMPLE
  PS C:\> Add-XP -Player $joe -XP 10
  Choose an ability to bump!
  Leveled up! Level 4
  Total XP: 18

  Give PC `$Joe` 10 additional XP.
.PARAMETER Player
  This is a MazeRat player you created with New-MazeRat
.PARAMETER XP
  Experience points gained.
#>
function Add-XP {
  param (
    [MazeRat]
    $Player,
    [Int16]
    $XP
  )
  Write-Host ('Total XP: {0}' -f $Player.GainXP($XP))
}
