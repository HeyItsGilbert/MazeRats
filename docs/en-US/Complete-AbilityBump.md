---
external help file: MazeRats-help.xml
Module Name: MazeRats
online version:
schema: 2.0.0
---

# Complete-AbilityBump

## SYNOPSIS
Bump a players ability

## SYNTAX

```
Complete-AbilityBump [[-Player] <MazeRat>] [[-Ability] <Abilities>] [<CommonParameters>]
```

## DESCRIPTION
If a player has gained enough skill in an ability, you can bump their total.

## EXAMPLES

### EXAMPLE 1
```
Complete-AbilityBump -Player $P  -Ability Strength
```

Increasing player ($p) strength ability.
If the player has more ability points
you will be prompted.

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

### -Ability
An ability to bump (Dexterity, Strength, or Will)

```yaml
Type: Abilities
Parameter Sets: (All)
Aliases:
Accepted values: Strength, Dexterity, Will

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
