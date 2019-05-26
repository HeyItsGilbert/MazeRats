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

  [ValidateRange(0,4)]
  [Int16]
  $Strength

  [ValidateRange(0,4)]
  [Int16]
  $Dexterity

  [ValidateRange(0,4)]
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

  [System.Collections.ArrayList] $Spells = @()

  # Contructor
  MazeRat ([String]$Name, [Int16]$Level)
  {
      $this.Name = $Name
      $this.Level = $Level
      $this.XP = 0
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

  [Int16] GainXP ($XP){
    $this.XP += $XP
    switch ($this.XP) {
      {$_ -gt 42} { $this.LevelUp(7) }
      {$_ -in 30..41} { $this.LevelUp(6) }
      {$_ -in 20..29} { $this.LevelUp(5) }
      {$_ -in 12..19} { $this.LevelUp(4) }
      {$_ -in 6..11} { $this.LevelUp(3) }
      {$_ -in 2..5} { $this.LevelUp(2) }
    }
    return $this.XP
  }

  [Int16] LevelUp($level){
    if($this.Level -eq $level){
      return $this.Level
    } else {
      switch ($level) {
        2 {
          $this.MaxHealth += 2
          Write-Host 'Choose an ability to bump!'
        }
        3 {
          $this.MaxHealth += 2
        }
        4 {
          $this.MaxHealth += 2
          Write-Host 'Choose an ability to bump!'
        }
        5 {
          $this.MaxHealth += 2
        }
        6 {
          $this.MaxHealth += 2
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

  [Int16] GetRest(){
    return $this.Health = $this.MaxHealth
  }

  [Int16] NewDiceRoll() {
    $res = Get-Random -Maximum 6
    Write-Verbose "Rolled a $res"
    return $res
  }

  [MazeRat] AbilityBump([Abilities]$ability){
    switch ($ability) {
      'Strength' { $this.Strength += 1 }
      'Dexterity' { $this.Dexterity += 1 }
      'Will' { $this.Will += 1 }
    }
    return $this
  }

  [String] AddSpell(){
    $physicalEffect = @(
      'Animating',
      'Attracting',
      'Binding',
      'Blossoming',
      'Consuming',
      'Creeping',
      'Crushing',
      'Diminishing',
      'Dividing',
      'Duplicating',
      'Enveloping',
      'Expanding',
      'Fusing',
      'Grasping',
      'Hastening',
      'Hindering',
      'Illuminating',
      'Imprisoning',
      'Levitating',
      'Opening',
      'Petrifying',
      'Phasing',
      'Piercing',
      'Pursuing',
      'Reflecting',
      'Regenerating',
      'Rending',
      'Repelling',
      'Resurrecting',
      'Screaming',
      'Sealing',
      'Shapeshifting',
      'Shielding',
      'Spawning',
      'Transmuting',
      'Transporting'
    )
    $physicalElement = @(
      'Acid',
      'Amber',
      'Bark',
      'Blood',
      'Bone',
      'Brine',
      'Clay',
      'Crow',
      'Crystal',
      'Ember',
      'Flesh',
      'Fungus',
      'Glass',
      'Honey',
      'Ice',
      'Insect',
      'Wood',
      'Lava',
      'Moss',
      'Obsidian',
      'Oil',
      'Poison',
      'Rat',
      'Salt',
      'Sand',
      'Sap',
      'Serpent',
      'Slime',
      'Stone',
      'Tar',
      'Thron',
      'Vine',
      'Water',
      'Wine',
      'Wood',
      'Worm'
    )
    $physicalForm = @(
      'Altar',
      'Armor',
      'Arrow',
      'Beast',
      'Blade',
      'Cauldron',
      'Chain',
      'Chariot',
      'Claw',
      'Cloak',
      'Colossus',
      'Crown',
      'Elemental',
      'Eye',
      'Fountain',
      'Gate',
      'Golem',
      'Hammer',
      'Horn',
      'Key',
      'Mask',
      'Monolith',
      'Pit',
      'Prison',
      'Sentinel',
      'Servant',
      'Shield',
      'Spear',
      'Steed',
      'Swarm',
      'Tentacle',
      'Throne',
      'Torch',
      'Trap',
      'Well',
      'Web'
    )
    $etherealEffect = @(
      'Avenging',
      'Banishing',
      'Bewildering',
      'Blinding',
      'Charming',
      'Communicating',
      'Compelling',
      'Concealing',
      'Deafening',
      'Deceiving',
      'Deciphering',
      'Disguising',
      'Dispelling',
      'Emboldening',
      'Encoding',
      'Energizing',
      'Enlightening',
      'Enraging',
      'Excruciating',
      'Foreseeing',
      'Intoxicating',
      'Maddening',
      'Mesmerizing',
      'Mindreading',
      'Nullifying',
      'Paralyzing',
      'Revealing',
      'Revolting',
      'Scrying',
      'Silencing',
      'Soothing',
      'Summoning',
      'Terrifying',
      'Warding',
      'Wearying',
      'Withering'
    )
    $etherealElement = @(
      'Ash',
      'Chaos',
      'Distortion',
      'Dream',
      'Dust',
      'Echo',
      'Ectoplasm',
      'Fire',
      'Fog',
      'Ghost',
      'Harmony',
      'Heat',
      'Light',
      'Lightning',
      'Memory',
      'Mind',
      'Mutation',
      'Negation',
      'Plague',
      'Plasma',
      'Probability',
      'Rain',
      'Rot',
      'Shadow',
      'Smoke',
      'Snow',
      'Soul',
      'Star',
      'Stasis',
      'Steam',
      'Thunder',
      'Time',
      'Void',
      'Warp',
      'Whisper',
      'Wind'
    )
    $etherealForm = @(
      'Aura',
      'Beacon',
      'Beam',
      'Blast',
      'Blob',
      'Bolt',
      'Bubble',
      'Call',
      'Cascade',
      'Circle',
      'Cloud',
      'Coil',
      'Cone',
      'Cube',
      'Dance',
      'Disk',
      'Field',
      'Form',
      'Gaze',
      'Loop',
      'Moment',
      'Nexus',
      'Portal',
      'Pulse',
      'Pyramid',
      'Ray',
      'Shard',
      'Sphere',
      'Spray',
      'Storm',
      'Swarm',
      'Torrent',
      'Touch',
      'Vortex',
      'Wave',
      'Word'
    )
    $spell = switch(Get-Random -Maximum 12){
      1 {
        "{0} {1}" -F (Get-Random -InputObject $physicalEffect),
        (Get-Random -InputObject $physicalForm)
      }
      2 {
        "{0} {1}" -F (Get-Random -InputObject $physicalEffect),
        (Get-Random -InputObject $etherealForm)
      }
      3 {
        "{0} {1}" -F (Get-Random -InputObject $etherealEffect),
        (Get-Random -InputObject $physicalForm)
      }
      4 {
        "{0} {1}" -F (Get-Random -InputObject $etherealEffect),
        (Get-Random -InputObject $etherealForm)
      }
      5 {
        "{0} {1}" -F (Get-Random -InputObject $physicalElement),
        (Get-Random -InputObject $physicalForm)
      }
      6 {
        "{0} {1}" -F (Get-Random -InputObject $physicalElement),
        (Get-Random -InputObject $etherealForm)
      }
      7 {
        "{0} {1}" -F (Get-Random -InputObject $etherealElement),
        (Get-Random -InputObject $physicalForm)
      }
      8 {
        "{0} {1}" -F (Get-Random -InputObject $etherealElement),
        (Get-Random -InputObject $etherealForm)
      }
      9 {
        "{0} {1}" -F (Get-Random -InputObject $physicalEffect),
        (Get-Random -InputObject $physicalElement)
      }
      10 {
        "{0} {1}" -F (Get-Random -InputObject $physicalEffect),
        (Get-Random -InputObject $etherealElement)
      }
      11 {
        "{0} {1}" -F (Get-Random -InputObject $etherealEffect),
        (Get-Random -InputObject $physicalElement)
      }
      12 {
        "{0} {1}" -F (Get-Random -InputObject $etherealEffect),
        (Get-Random -InputObject $etherealElement)
      }
    }
    if ($Null -eq $this.Spells) {
      [System.Collections.ArrayList]$this.Spells.Add($spell)
    } else {
      $this.Spells.Add($spell)
    }
    return $spell
  }

  [String] AddSpell($Spell){
    if ($Null -eq $this.Spells) {
      [System.Collections.ArrayList]$this.Spells.Add($Spell)
    } else {
      $this.Spells.Add($Spell)
    }
    return $Spell
  }
}

# Functions
function New-MazeRat {
  [CmdletBinding()]
  param (
    # Allow custom name
    $Name,
    # Gender
    [Gender]$Gender = ([Enum]::GetValues([Gender]) | Get-Random),
    # Social Rank
    [SocialClass]$Class = ([Enum]::GetValues([SocialClass]) | Get-Random)
  )

  if($Null -eq $Name){
    $Name = New-RatName -Gender $Gender -Class $Class
  }

  $base = [MazeRat]::new($Name,1)
  $base.Health = 4
  $base.MaxHealth = 4
  # Roll or Choose abilitiies
  $base.Strength,$base.Dexterity,$base.Will = switch (Get-Random -Maximum 6) {
    1 { 2,1,0 }
    2 { 2,0,1 }
    3 { 1,2,0 }
    4 { 0,2,1}
    5 { 1,0,2 }
    6 { 0,1,2 }
  }
  [void] $base.GetAppearance()
  [void] $base.GetPhysicalDetail()
  [void] $base.GetBackground()
  [void] $base.GetClothing()
  [void] $base.GetPersonality()
  [void] $base.GetMannerism()
  return $base
}

function New-RatName {
  param(
    # Gender
    [Gender]$Gender,
    # Social Rank
    [SocialClass]$Class
  )
  # First Name
  if($Gender -eq 'Male') {
    $first = @(
      'Balthazar',
      'Basil',
      'Bertram',
      'Blaxton',
      'Chadwick',
      'Clovis',
      'Destrian',
      'Ellis',
      'Erasmus',
      'Faustus',
      'Finn',
      'Fitzhugh',
      'Florian',
      'Fox',
      'Godwin',
      'Hannibal',
      'Jasper',
      'Jiles',
      'Jules',
      'Leopold',
      'Merrick',
      'Mortimer',
      'Ogden',
      'Orion',
      'Oswald',
      'Percival',
      'Peregrine',
      'Quentin',
      'Redmaine',
      'Reinhold',
      'Silas',
      'Stilton',
      'Stratford',
      'Tenpiece',
      'Waverly',
      'Webster'
    ) | Get-Random
  } else {
    $first = @(
      'Adelaide',
      'Alma',
      'Barsaba',
      'Beatrix',
      'Bianca',
      'Cleopha',
      'Clover',
      'Constance',
      'Damaris',
      'Daphne',
      'Demona',
      'Elsbeth',
      'Esme',
      'Fern',
      'Hester',
      'Hippolyta',
      'Jessamine',
      'Jilly',
      'Morgot',
      'Minerva',
      'Nerissa',
      'Odette',
      'Olga',
      'Orchid',
      'Pepper',
      'Pheobe',
      'Piety',
      'Piety',
      'Poppy',
      'Silence',
      'Sybil',
      'Trillby',
      'Tuesday',
      'Ursula',
      'Vivian',
      'Wendy',
      'Zora'
    ) | Get-Random
  }

  # Last Name
  if($class -eq 'UpperClass'){
    $last = @(
      'Belvedere',
      'Bithesea',
      'Calaver',
      'Carvolo',
      'De Rippe',
      'Droll',
      'Dunlow',
      'Edevane',
      'Erelong',
      'Febland',
      'Fernsby',
      'Fisk',
      'Gastrell',
      'Girdwood',
      'Gorgon',
      'Grimeson',
      'Gruger',
      'Hitheryon',
      'La Marque',
      'Malmora',
      'Miter',
      'Oblington',
      'Onymous',
      'Phillifent',
      'Portendorfer',
      'Romatet',
      'Rothery',
      'Skorbeck',
      'Slora',
      'Southwark',
      'Stavish',
      'Vanermeer',
      'Wellbelove',
      'Westergren',
      'Wexley',
      'Wilberforce'
    ) | Get-Random
  } else {
    $last = @(
      'Barrow',
      'Bettleman',
      'Berrycloth',
      'Birdwhistle',
      'Bobich',
      'Chips',
      'Coffin',
      'Crumpling',
      'Culpepper',
      'Dankworth',
      'Digworthy',
      'Dreggs',
      'Gimble',
      'Graveworm',
      'Greelish',
      'Hardwick',
      'Hatman',
      'Hovel',
      'Knibbs',
      'Midnighter',
      'Needle',
      'Nethercoat',
      'Pestle',
      'Relish',
      'Rumbold',
      'Rummage',
      'Sallow',
      'Saltmarsh',
      'Silverless',
      'Skitter',
      'Slee',
      'Slitherly',
      'Stoker',
      'Tarwater',
      'Tumbler',
      'Villin'
    ) | Get-Random
  }
  return "$first $last"
}
function New-DiceRoll {
  $res = Get-Random -Maximum 6
  Write-Verbose "Rolled a $res"
  return $res
}

function Invoke-Spell {
  param (
    [MazeRat]
    $Player,
    [String]
    $Spell
  )
  if($Spell -notin $Player.Spells){
    Write-Host ("{0} doesn't know that spell..." -F $Player.Name)
    Write-Host "They do know:"
    foreach($Spell in $Player.Spells){
    Write-Host " - $Spell"
    }
  } else {
    $Player.Spells.Remove($Spell)
    Write-Host ("{0} casts {1}!" -F $Player.Name, $Spell)
  }
}
