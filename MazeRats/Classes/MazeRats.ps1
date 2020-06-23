# Enums
enum Gender {
    Male
    Female
}

enum SocialClass {
    UpperClass
    LowerClass
}

enum Abilities {
    Strength
    Dexterity
    Will
}

# Class
class MazeRat {
    [string] $Name
    [Int16] $Level
    [Int16] $XP

    [ValidateRange(0, 4)]
    [Int16]
    $Strength

    [ValidateRange(0, 4)]
    [Int16]
    $Dexterity

    [ValidateRange(0, 4)]
    [Int16]
    $Will

    [Int16] $Attack
    [Int16] $Armor
    [Int16] $Health
    [Int16] $MaxHealth
    [Int16] $SpellSlots
    [String] $Appearance
    [String] $PhysicalDetail
    [String] $Background
    [String] $Clothing
    [String] $Personality
    [String] $Mannerism
    [Int16] $AbilityPoints

    [System.Collections.ArrayList] $Spells = @()

    # Contructor
    MazeRat ([String]$Name, [Int16]$Level) {
        $this.Name = $Name
        $this.Level = $Level
        $this.XP = 0
    }

    [String] GetDescription() {
        return ("{0} was a {1} {2}. Their {3} appearance is contrasted by their {4} clothing. Their {5} attitude was always dotted by {6}" -f $this.Name, $this.PhysicalDetail, $this.Background, $this.Appearance, $this.Clothing, $this.Personality, $this.Mannerism)
    }

    [String] GetAppearance() {
        return $this.Appearance = @(
            'Aquiline',
            'Athletic',
            'Barrel-Chested',
            'Boney',
            'Brawny',
            'Bullnecked',
            'Chiseled',
            'Coltish',
            'Corpulent',
            'Craggy',
            'Delicate',
            'Furrowed',
            'Gaunt',
            'Gorgeous',
            'Grizzled',
            'Haggard',
            'Handsome',
            'Hideaous',
            'Lanky',
            'Pudgy',
            'Ripped',
            'Rosy',
            'Scrawny',
            'Sinewy',
            'Slender',
            'Slumped',
            'Solid',
            'Square-Jawed',
            'Statuesque',
            'Towering',
            'Trim',
            'Weathered',
            'Willowy',
            'Wiry',
            'Wrinkled'
        ) | Get-Random
    }

    [String] GetPhysicalDetail() {
        return $this.PhysicalDetail = @(
            'Acid scars',
            'Battle scars',
            'Birthmark',
            'Braided hair',
            'Broken nose',
            'Bronze skinned',
            'Burn scars',
            'Bushy eyebrows',
            'Curly hair',
            'Dark skinned',
            'Dreadlocks',
            'Exotic accent',
            'Flogging scars',
            'Freckles',
            'Gold tooth',
            'Hoarse voice',
            'Huge beard',
            'Long hair',
            'Matted hair',
            'Missing ear',
            'Missing teeth',
            'Mustache',
            'Muttonchops',
            'Nine fingers',
            'Oiled hair',
            'One-eyed',
            'Pale skinned',
            'Piercings',
            'Ritual scars',
            'Sallow skin',
            'Shaved head',
            'Sunburned',
            'Tangled hair',
            'Tattoos',
            'Topknot'
        ) | Get-Random
    }

    [String] GetBackground() {
        return $this.Background = @(
            'Alchemist',
            'Beggar-prince',
            'Blackmailer',
            'Bounty-hunter',
            'Chimney sweep',
            'Coin-clipper',
            'Contortionist',
            'Cultist',
            'Cutpurse',
            'Debt-collector',
            'Deserter',
            'Fence',
            'Fortuneteller',
            'Galley slave',
            'Gambler',
            'Gravedigger',
            'Headsman',
            'Hedge knight',
            'Highwayman',
            'Housebreaker',
            'Kidnapper',
            'Mad prophet',
            'Mountebank',
            'Peddler',
            'Pit-fighter',
            'Poisoner',
            'Rat-catcher',
            'Scrivener',
            'Sellsword',
            'Slave',
            'Smuggler',
            'Street performist',
            'Tattooist',
            'Urchin',
            'Userer'
        ) | Get-Random
    }

    [String] GetClothing() {
        return $this.Clothing = @(
            'Antique',
            'Battle-torn',
            'Bedraggled',
            'Blood-stained',
            'Ceremonial',
            'Dated',
            'Decaying',
            'Eccentric',
            'Elegant',
            'Embroidered',
            'Exotic',
            'Fashionable',
            'Flamboyant',
            'Food-stained',
            'Formal',
            'Frayed',
            'Frumby',
            'Garish',
            'Grimy',
            'Haute couture',
            'Lacey',
            'Livery',
            'Mud-stained',
            'Ostentatious',
            'Oversized',
            'Patched',
            'Patterned',
            'Perfumed',
            'Practical',
            'Rumpled',
            'Sigils',
            'Singed',
            'Tasteless',
            'Undersized',
            'Wine-stained',
            'Worn out'
        ) | Get-Random
    }

    [String] GetPersonality() {
        return $this.Personality = @(
            'Bitter',
            'Brave',
            'Cautious',
            'Chipper',
            'Contrary',
            'Cowardly',
            'Cunning',
            'Driven',
            'Entitled',
            'Gregarious',
            'Grumpy',
            'Heartless',
            'Honor-bound',
            'Hotheaded',
            'Inquisitive',
            'Irascible',
            'Jolly',
            'Know-it-all',
            'Lazy',
            'Loyal',
            'Menacing',
            'Mopey',
            'Nervous',
            'Protective',
            'Righteous',
            'Rude',
            'Sarcastic',
            'Savage',
            'Scheming',
            'Serene',
            'Spacey',
            'Stoic',
            'Stubborn',
            'Stuck-up',
            'Suspicious',
            'Wisecracking'
        ) | Get-Random
    }

    [String] GetMannerism() {
        return $this.Mannerism = @(
            'Anecdotes',
            'Breathy',
            'Chuckles',
            'Clipped',
            'Cryptic',
            'Deep voice',
            'Drawl',
            'Enunciates',
            'Flowery speech',
            'Gravelly voice',
            'High formal',
            'Hypnotic',
            'Interrupts',
            'Leconic',
            'Laughs',
            'Long pauses',
            'Melodious',
            'Monotone',
            'Mumbles',
            'Narrates',
            'Overly casual',
            'Quit sayings',
            'Rambles',
            'Random facts',
            'Rapid-fire',
            'Rhyming',
            'Robotic',
            'Slow speech',
            'Speechifies',
            'Squeaky',
            'Street slang',
            'Stutters',
            'Talks to self',
            'Trails off',
            'Very loud',
            'Whispers'
        ) | Get-Random
    }

    [Int16] GainXP ($XP) {
        # ToDo: Account for jumping multiple levels
        $this.XP += $XP
        switch ($this.XP) {
            { $_ -gt 42 } { $this.LevelUp(7) }
            { $_ -in 30..41 } { $this.LevelUp(6) }
            { $_ -in 20..29 } { $this.LevelUp(5) }
            { $_ -in 12..19 } { $this.LevelUp(4) }
            { $_ -in 6..11 } { $this.LevelUp(3) }
            { $_ -in 2..5 } { $this.LevelUp(2) }
        }
        return $this.XP
    }

    [Int16] LevelUp($level) {
        # ToDo: Prompt to chose ability during level up.
        if ($this.Level -eq $level) {
            return $this.Level
        } else {
            # ToDo: Determine if jumping more then 2 levels
            switch ($level) {
                2 {
                    $this.MaxHealth += 2
                    $this.AbilityPoints += 1
                    Write-Host 'Choose an ability to bump!'
                }
                3 {
                    $this.MaxHealth += 2
                }
                4 {
                    $this.MaxHealth += 2
                    $this.AbilityPoints += 1
                    Write-Host 'Choose an ability to bump!'
                }
                5 {
                    $this.MaxHealth += 2
                }
                6 {
                    $this.MaxHealth += 2
                    $this.AbilityPoints += 1
                    Write-Host 'Choose an ability to bump!'
                }
                7 {
                    $this.MaxHealth += 2
                }
            }
            Write-Host "Leveled up! Level $level"
            return $this.Level = $level
        }
    }

    [Int16] GetRest() {
        return $this.Health = $this.MaxHealth
    }

    [MazeRat] AbilityBump([Abilities]$ability) {
        switch ($ability) {
            'Strength' { $this.Strength += 1 }
            'Dexterity' { $this.Dexterity += 1 }
            'Will' { $this.Will += 1 }
        }
        $this.AbilityPoints -= 1
        return $this
    }

    [String] AddSpell() {
        $spell = New-Spell
        if ($Null -eq $this.Spells) {
            [System.Collections.ArrayList]$this.Spells.Add($spell)
        } else {
            $this.Spells.Add($spell)
        }
        return $spell
    }

    [String] AddSpell($Spell) {
        if ($Null -eq $this.Spells) {
            [System.Collections.ArrayList]$this.Spells.Add($Spell)
        } else {
            $this.Spells.Add($Spell)
        }
        return $Spell
    }
}
