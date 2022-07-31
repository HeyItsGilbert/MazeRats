---
external help file: MazeRats-help.xml
Module Name: MazeRats
online version:
schema: 2.0.0
---

# Invoke-Spell

## SYNOPSIS
Uses a player spell if they know it.

## SYNTAX

```
Invoke-Spell [[-Player] <MazeRat>] [[-Spell] <Magic>] [<CommonParameters>]
```

## DESCRIPTION
This allows you to use a MazeRat players Spells.
It will return text saying
that they used their spell.

## EXAMPLES

### EXAMPLE 1
```
Invoke-Spell $p -Spell 'Shielding Blast'
Hester Bettleman casts Shielding Blast!
```

$p is Hester Bettleman and he used his Shielding Blast spell

### EXAMPLE 2
```
Invoke-Spell $p -Spell 'Shielding Blast'
Hester Bettleman doesn't know that spell...
They do know:
```

Hester Bettleman ($p) tried using Shielding Blast spell but didn't know it.

## PARAMETERS

### -Player
This should be a player object created by New-MazeRat

```yaml
Type: MazeRat
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Spell
This should be a spell that is listed in the Players spell array.

You can check by checking $player.Spells

```yaml
Type: Magic
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
