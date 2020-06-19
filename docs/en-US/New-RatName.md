---
external help file: MazeRats-help.xml
Module Name: MazeRats
online version:
schema: 2.0.0
---

# New-RatName

## SYNOPSIS
Create a new character name.

## SYNTAX

```
New-RatName [[-Gender] <Gender>] [[-Class] <SocialClass>] [<CommonParameters>]
```

## DESCRIPTION
Creates a new name based on the original table in MazeRats.

## EXAMPLES

### EXAMPLE 1
```powershell
PS C:\> New-RatName
Trillby Crumpling
```

Creates a random name to be used by PC or NPC.

## PARAMETERS

### -Class
Social Rank

```yaml
Type: SocialClass
Parameter Sets: (All)
Aliases:
Accepted values: UpperClass, LowerClass

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Gender
Gender

```yaml
Type: Gender
Parameter Sets: (All)
Aliases:
Accepted values: Male, Female

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Inputs (if any)
## OUTPUTS

### Output's a name.
## NOTES
General notes

## RELATED LINKS
