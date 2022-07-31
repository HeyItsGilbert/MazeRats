---
external help file: MazeRats-help.xml
Module Name: MazeRats
online version:
schema: 2.0.0
---

# New-MazeRat

## SYNOPSIS
Creates a new character.

## SYNTAX

```
New-MazeRat [[-Name] <Object>] [[-Gender] <Gender>] [[-Class] <SocialClass>] [<CommonParameters>]
```

## DESCRIPTION
Generate a new character quickly with minimal options.

## EXAMPLES

### EXAMPLE 1
```
New-MazeRat
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
```

Generating a Random character with no parameters.

## PARAMETERS

### -Name
Their name.
You can generate one via \`New-RatName\` if you'd like.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Gender
Using the default tables, this currently accepts Male or Female but in future
versions this will expand.

```yaml
Type: Gender
Parameter Sets: (All)
Aliases:
Accepted values: Male, Female

Required: False
Position: 2
Default value: ([Enum]::GetValues([Gender]) | Get-Random)
Accept pipeline input: False
Accept wildcard characters: False
```

### -Class
The social class this character belongs to.

```yaml
Type: SocialClass
Parameter Sets: (All)
Aliases:
Accepted values: UpperClass, LowerClass

Required: False
Position: 3
Default value: ([Enum]::GetValues([SocialClass]) | Get-Random)
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
