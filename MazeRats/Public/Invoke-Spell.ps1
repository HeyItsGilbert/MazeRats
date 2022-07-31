<#
.SYNOPSIS
  Uses a player spell if they know it.
.DESCRIPTION
  This allows you to use a MazeRat players Spells. It will return text saying
  that they used their spell.
.EXAMPLE
  > Invoke-Spell $p -Spell 'Shielding Blast'
  Hester Bettleman casts Shielding Blast!

  $p is Hester Bettleman and he used his Shielding Blast spell
.EXAMPLE
  > Invoke-Spell $p -Spell 'Shielding Blast'
  Hester Bettleman doesn't know that spell...
  They do know:

  Hester Bettleman ($p) tried using Shielding Blast spell but didn't know it.
.PARAMETER Player
  This should be a player object created by New-MazeRat
.PARAMETER Spell
  This should be a spell that is listed in the Players spell array.

  You can check by checking $player.Spells
#>
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
    Write-Host 'They do know:'
    foreach ($Spell in $Player.Spells) {
      Write-Host " - $Spell"
    }
  } else {
    $Player.Spells.Remove($Spell)
    Write-Host ('{0} casts {1}!' -F $Player.Name, $Spell)
  }
}
