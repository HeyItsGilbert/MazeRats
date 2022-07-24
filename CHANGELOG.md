# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [0.1.1] Minor tweaks

- Move help text to comment blocks for easier dev experience.
- Update module metadata with tags and links
- Add icon to module
- Remove dice rolls and depend on RPGDice for that.
- Switch to 2 space as the indent
- Add exclude for 'PSUseShouldProcessForStateChangingFunctions'

## [0.1.0] Unreleased

- Initial classes to get started.
  - Dice
  - Magic
  - MazeMonsters
  - MazeRats
- Initial functions to get started.
  - Add-XP
  - Invoke-Spell
  - New-DiceRoll
  - New-MazeMonster
  - New-MazeRat
  - New-RatName
  - New-Spell
- "Hard" set tables are enums where we wouldn't expect someone to overwrite. The
  remaining tables should stay arrays where we can let folks add custom items
  which will hopefully be availble soon.
