<#
.SYNOPSIS
  Creates a new character.
.DESCRIPTION
  Generate a new character quickly with minimal options.
.EXAMPLE
  PS C:\> New-MazeRat
  Name           : Hester Bettleman
  Level          : 1
  XP             : 0
  Strength       : 1
  Dexterity      : 2
  Will           : 0
  Attack         : 0
  Armor          : 0
  Health         : 4
  MaxHealth      : 4
  SpellSlots     : 0
  Appearance     : Boney
  PhysicalDetail : Bronze skinned
  Background     : Galley slave
  Clothing       : Undersized
  Personality    : Stubborn
  Mannerism      : Monotone
  Spells         : {Shielding Blast}

  Generating a Random character with no parameters.
.PARAMETER Class
  The social class this character belongs to.
.PARAMETER Gender
  Using the default tables, this currently accepts Male or Female but in future
  versions this will expand.
.PARAMETER Name
  Their name. You can generate one via `New-RatName` if you'd like.
#>
function New-MazeRat {
  [CmdletBinding()]
  param (
    # Allow custom name
    $Name,
    # Gender
    [Gender]$Gender = ([Enum]::GetValues([Gender]) | Get-Random),
    # Social Rank
    [SocialClass]$Class = ([Enum]::GetValues([SocialClass]) | Get-Random)
  )

  if ($Null -eq $Name) {
    $Name = New-RatName -Gender $Gender -Class $Class
  }

  $base = [MazeRat]::new($Name, 1)
  $base.Health = 4
  $base.MaxHealth = 4
  # Roll or Choose abilitiies
  $base.Strength, $base.Dexterity, $base.Will = switch (Get-Random -Maximum 6) {
    1 { 2, 1, 0 }
    2 { 2, 0, 1 }
    3 { 1, 2, 0 }
    4 { 0, 2, 1 }
    5 { 1, 0, 2 }
    6 { 0, 1, 2 }
  }
  [void] $base.GetAppearance()
  [void] $base.GetPhysicalDetail()
  [void] $base.GetBackground()
  [void] $base.GetClothing()
  [void] $base.GetPersonality()
  [void] $base.GetMannerism()
  return $base
}
