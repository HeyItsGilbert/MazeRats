---
external help file: MazeRats-help.xml
Module Name: MazeRats
online version:
schema: 2.0.0
---

# New-MazeMonster

## SYNOPSIS
Creates a new monster for your encounters.

## SYNTAX

```
New-MazeMonster [-Health] <Health> [-Armor] <Armor> [-AttackBonus] <AttackBonus> [-Strength] <StrBonus>
 [-Dexterity] <DexBonus> [-Will] <WilBonus> [[-MonsterBase] <MonsterBase>] [[-Feature] <String>]
 [[-Trait] <String>] [[-Ability] <String>] [<CommonParameters>]
```

## DESCRIPTION
Randomly generates a monsters.

## EXAMPLES

### EXAMPLE 1
```
New-MazeMonster
Returns a MazeMonster
```

## PARAMETERS

### -Health
The type of health we want from this Monster.

```yaml
Type: Health
Parameter Sets: (All)
Aliases:
Accepted values: Weak, Typical, Tough, Hulking, Colossal

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Armor
How heavily protected is your character?

```yaml
Type: Armor
Parameter Sets: (All)
Aliases:
Accepted values: Unarmored, LightProtection, ModerateProtection, HeavyProtection, NighImpervious

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AttackBonus
How skilled is this character?

```yaml
Type: AttackBonus
Parameter Sets: (All)
Aliases:
Accepted values: Untrained, Trained, Dangerous, Masterful, Lethal

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Strength
Weak, Average, Strong, Powerful, Monstrous

```yaml
Type: StrBonus
Parameter Sets: (All)
Aliases:
Accepted values: Weak, Average, Strong, Powerful, Monstrous

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Dexterity
How dexterous is this character?

```yaml
Type: DexBonus
Parameter Sets: (All)
Aliases:
Accepted values: Slow, Average, Nimble, Swift, Blurred

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Will
Dimwitted, Average, Clever, Brilliant, Genius

```yaml
Type: WilBonus
Parameter Sets: (All)
Aliases:
Accepted values: Dimwitted, Average, Clever, Brilliant, Genius

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonsterBase
Is this monster Aerial, Terrestrial, or Aquatic?

```yaml
Type: MonsterBase
Parameter Sets: (All)
Aliases:
Accepted values: Aerial, Terrestrial, Aquatic

Required: False
Position: 7
Default value: ([Enum]::GetValues([MonsterBase]) | Get-Random)
Accept pipeline input: False
Accept wildcard characters: False
```

### -Feature
What kind of feature does the monster have?

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Trait
What kind of trait does this monster have?

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ability
Optional ability for your monster.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
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
