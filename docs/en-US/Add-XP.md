---
external help file: MazeRats-help.xml
Module Name: MazeRats
online version:
schema: 2.0.0
---

# Add-XP

## SYNOPSIS
Add experience points to a player.

## SYNTAX

```
Add-XP [[-Player] <MazeRat>] [[-XP] <Int16>] [<CommonParameters>]
```

## DESCRIPTION
Given a player and XP gained, it will add it to the existing points and if
approriate level the player up.

## EXAMPLES

### EXAMPLE 1
```
Add-XP -Player $joe -XP 10
Choose an ability to bump!
Leveled up! Level 4
Total XP: 18
```

Give PC \`$Joe\` 10 additional XP.

## PARAMETERS

### -Player
This is a MazeRat player you created with New-MazeRat

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

### -XP
Experience points gained.

```yaml
Type: Int16
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
