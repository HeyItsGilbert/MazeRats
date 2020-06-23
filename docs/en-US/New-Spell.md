---
external help file: MazeRats-help.xml
Module Name: MazeRats
online version:
schema: 2.0.0
---

# New-Spell

## SYNOPSIS
Create a new spell for your PC or NPC to use/discover.

## SYNTAX

```
New-Spell [[-Mutation] <Boolean>] [[-Omen] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Creates a spell.

## EXAMPLES

### Create new spell
```powershell
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
```

Create a new spell and save it to a variable.

## PARAMETERS

### -Mutation
Should the spell has a mutation.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Omen
Should the spell result in an Omen.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
