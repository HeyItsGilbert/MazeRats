# MazeRats
![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/MazeRats) ![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/MazeRats) ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/HeyItsGilbert/MazeRats/CI) ![PowerShell Gallery](https://img.shields.io/powershellgallery/p/MazeRats)

A MazeRats PC and NPC generator in powershell!

## Overview

This is a PowerShell module created to make it easy to spin up Maze Rats
characters.

The source for this comes from [Maze Rats](https://questingbeast.itch.io/maze-rats)
Please support Ben by buying a copy of the game. While this module will make it
easy to play digitally, you'll still want to have a copy of the rules.

## Installation

```powershell
Install-Module MazeRats
```

## Developing

1. Clone this directory
1. Download the necessary modules via
   * `.\build.ps1 -Bootstrap`

## Examples

```powershell
PS > $joe = New-MazeRat
PS > $joe


Name           : Fitzhugh Crumpling
Level          : 1
XP             : 0
Strength       : 2
Dexterity      : 0
Will           : 1
Attack         : 0
Armor          : 0
Health         : 4
MaxHealth      : 4
SpellSlots     : 0
Appearance     : Brawny
PhysicalDetail : Bushy eyebrows
Background     : Sellsword
Clothing       : Practical
Personality    : Know-it-all
Mannerism      : Slow speech
Spells         : {}


PS >
```
