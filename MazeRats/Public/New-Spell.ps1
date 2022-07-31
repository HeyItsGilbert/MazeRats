<#
.SYNOPSIS
  Create a new spell for your PC or NPC to use/discover.
.DESCRIPTION
  Creates a spell.
.EXAMPLE
  PS C:\> $spell = New-Spell
  PS C:\> $spell

  PhysicalEffect  :
  PhysicalElement :
  PhysicalForm    : Trap
  EtherealEffect  :
  EtherealElement : Warp
  EtherealForm    :
  Mutation        :
  Insanity        :
  Omen            :

  PS C:\> $spell.ToString()
  Warp Trap

  Create a new spell and save it to a variable.

.PARAMETER Omen
  Should the spell result in an Omen.
.PARAMETER Mutation
  Should the spell has a mutation.
#>
function New-Spell {
  param (
    [Bool]
    $Mutation,
    [Bool]
    $Omen
  )
  $spell = [Magic]::New()

  switch (Get-Random -Maximum 12) {
    1 {
      $spell.GetPhysicalEffect()
      $spell.GetPhysicalForm()
    }
    2 {
      $spell.GetPhysicalEffect()
      $spell.GetEtherealForm()
    }
    3 {
      $spell.GetEtherealEffect()
      $spell.GetPhysicalForm()
    }
    4 {
      $spell.GetEtherealEffect()
      $spell.GetEtherealForm()
    }
    5 {
      $spell.GetPhysicalElement()
      $spell.GetPhysicalForm()
    }
    6 {
      $spell.GetPhysicalElement()
      $spell.GetEtherealForm()
    }
    7 {
      $spell.GetEtherealElement()
      $spell.GetPhysicalForm()
    }
    8 {
      $spell.GetEtherealElement()
      $spell.GetEtherealForm()
    }
    9 {
      $spell.GetPhysicalEffect()
      $spell.GetPhysicalElement()
    }
    10 {
      $spell.GetPhysicalEffect()
      $spell.GetEtherealElement()
    }
    11 {
      $spell.GetEtherealEffect()
      $spell.GetPhysicalElement()
    }
    12 {
      $spell.GetEtherealEffect()
      $spell.GetEtherealElement()
    }
  }

  if ($Mutation) { $spell.GetMutation() }
  if ($Omen) { $spell.GetOmen() }

  return $spell
}
