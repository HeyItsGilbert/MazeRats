# Enums
enum Health {
    Weak = 1
    Typical = 2
    Tough = 3
    Hulking = 4
    Colossal = 6
  }

  enum Armor {
    Unarmored = 6
    LightProtection = 7
    ModerateProtection = 8
    HeavyProtection = 9
    NighImpervious = 10
  }

  enum AttackBonus {
    Untrained = 0
    Trained = 1
    Dangerous = 2
    Masterful = 3
    Lethal = 4
  }

  enum StrBonus {
    Weak = 0
    Average = 1
    Strong = 2
    Powerful = 3
    Monstrous = 4
  }

  enum DexBonus {
    Slow = 0
    Average = 1
    Nimble = 2
    Swift = 3
    Blurred = 4
  }

  enum WilBonus {
    Dimwitted = 0
    Average = 1
    Clever = 2
    Brilliant = 3
    Genius = 4
  }

  enum MonsterBase {
    Aerial
    Terrestrial
    Aquatic
  }

  # Class
  class MazeMonster {
      [Int16]$Health
      [Int16]$Armor
      [Int16]$AttackBonus
      [Int16]$Strength
      [Int16]$Dexterity
      [Int16]$Will
      [String]$MonsterBase
      [String]$Feature
      [String]$Trait
      [String]$Ability
      [String]$Tactic
      [String]$Personality
      [String]$Weakness

      # Constructor
      MazeMonster(
        [Health]$Health,
        [Armor]$Armor,
        [AttackBonus]$AttackBonus,
        [StrBonus]$Strength,
        [DexBonus]$Dexterity,
        [WilBonus]$Will
      ){
        $this.Health = $this.HealthRoll($Health)
        $this.AttackBonus = $AttackBonus.value__
        $this.Armor = $Armor.value__
        $this.Strength = $Strength.value__
        $this.Dexterity = $Dexterity.value__
        $this.Will = $Will.value__
      }

      [Int16] HealthRoll([Health]$Health){
          $healthTotal = 0
          for($i=0; $i -le $health.value__; $i++){
              $healthTotal += Get-Random @(1..6)
          }
          return $healthTotal
      }

      [Void] GetAerial(){
        $result =  @('Albatross',
        'Bat',
        'Beetle',
        'Bird of Paradise',
        'Butterfly',
        'Condor',
        'Crane',
        'Crow',
        'Dragonfly',
        'Eagle',
        'Falcon',
        'Firefly',
        'Flamingo',
        'Fly',
        'Flying Squirrel',
        'Goose',
        'Gull',
        'Hummingbird',
        'Kingfisher',
        'Locust',
        'Magpie',
        'Mantis',
        'Mockingbird',
        'Mosquito',
        'Moth',
        'Owl',
        'Parrot',
        'Peacock',
        'Pelican',
        'Pteranodon',
        'Rooser',
        'Sparrow',
        'Swan',
        'Vulture',
        'Wasp',
        'Woodpecker') | Get-Random
        $this.MonsterBase = $result
      }

      [Void] GetTerrestrial(){
        $result = @(
          'Ant',
          'Ape',
          'Armadillo',
          'Badger',
          'Bear',
          'Boar',
          'Caterpiller',
          'Centipede',
          'Chameleon',
          'Cockroach',
          'Deer',
          'Elephant',
          'Ferret',
          'Fox',
          'Giraffe',
          'Goat',
          'Horse',
          'Human',
          'Mole',
          'Ostrich',
          'Ox',
          'Porcupine',
          'Rabbit',
          'Raccoon',
          'Rat',
          'Rhinoceros',
          'Scorpion',
          'Sheep',
          'Slug',
          'Snail',
          'Snake',
          'Spider',
          'Squirrel',
          'Tiger',
          'Wolf',
          'Woverine'
        ) | Get-Random
        $this.MonsterBase = $result
      }

      [Void] GetAquatic(){
        $result =  @(
          'Alligator',
          'Amoeba',
          'Anglerfish',
          'Beaver',
          'Clam',
          'Crab',
          'Dolphin',
          'Eel',
          'Frog',
          'Hippopotamus',
          'Jellyfish',
          'Leech',
          'Lobster',
          'Manatee',
          'Manta Ray',
          'Musktrat',
          'Narwhal',
          'Newt',
          'Octopus',
          'Otter',
          'Penguin',
          'Platypus',
          'Pufferfish',
          'Salamander',
          'Sea Anemone',
          'Sea Urchin',
          'Seahorse',
          'Seal',
          'Shark',
          'Shrimp',
          'Squid',
          'Swordfish',
          'Tadpole',
          'Turtle',
          'Walrus',
          'Whale'
        ) | Get-Random
        $this.MonsterBase = $result
      }

      [Void] GetFeature() {
        $this.Feature = @(
          'Antlers',
          'Beak',
          'Carapace',
          'Compound eyes',
          'Eye Stalks',
          'Fangs',
          'Fins',
          'Fur',
          'Gills',
          'Hooves',
          'Horns',
          'Legless',
          'Long tongue',
          'Many-eyed',
          'Many-limbed',
          'Mucus',
          'Pincers',
          'Plates',
          'Plumage',
          'Proboscis',
          'Scales',
          'Segments',
          'Shaggy hair',
          'Shell',
          'Spikes',
          'Spinnerets',
          'Spines',
          'Stinger',
          'Suction cups',
          'Tail',
          'Talos',
          'Tentacles',
          'Trunk',
          'Tusks',
          'Wings'
        ) | Get-Random
      }

      [Void] GetTrait() {
        $this.Trait = @(
          'Amphibious',
          'Bloated',
          'Brittle',
          'Cannibal',
          'Clay-like',
          'Colossal',
          'Crystalline',
          'Decaying',
          '#Ether. Element',
          'Ethreal',
          'Ever-young',
          'Eyeless',
          'Fearless',
          'Fluffy',
          'Fungal',
          'Gelatinous',
          'Geometric',
          'Hardened',
          'Illusory',
          'Intelligent',
          'Iridescent',
          'Luminous',
          'Many-headed',
          'Mechanical',
          '# Phys.Element',
          'Planar',
          'Reflective',
          'Rubbery',
          'Shadowy',
          'Sharp',
          'Skeletal',
          'Slimy',
          'Sticky',
          'Stinking',
          'Tiny',
          'Translucent'
        ) | Get-Random
      }

      [Void] GetAbility() {
        $this.Ability = @(
          'Absorbing',
          'Acid blood',
          'Anti-magic',
          'Blinding',
          'Breath weapon',
          'Camouflaging',
          'Duplicating',
          'Electric',
          'Entangling',
          '# Eth Effect',
          'Exploding',
          'Flying',
          'Gaze weapon',
          'Hypnotizing',
          'Impervious',
          'Invisible',
          'Life-draining',
          'Magnetic',
          'Mimicking',
          'Mind-Reading',
          'Paralyzing',
          'Phasing',
          '# Phy effect',
          'Poisonous',
          'Radioactive',
          'Reflective',
          'Regenerating',
          'Shapeshifting',
          'Spell-casting',
          'Stealthy',
          'Strangling',
          'Super-strength',
          'Telekinetic',
          'Teleporting',
          'Vampiric',
          'Wall-Crawling'
        ) | Get-Random
      }

      [Void] GetTactic() {
        $this.Tactic = @(
          'Ambush',
          'Call for support',
          'Capture',
          'Charge',
          'Climb foes',
          'Compel worship',
          'Create barrier',
          'Deceive',
          'Deman duel',
          'Disorient',
          'Encircle',
          'Evade',
          'Gang up',
          'Gather strength',
          'Go berserk',
          'Harry',
          'Hurl foes',
          'Immobilize',
          'Manipulate',
          'Mock',
          'Monologue',
          'Order minion',
          'Protect leader',
          'Protect self',
          'Scatter foes',
          'Stalk',
          'Steal from',
          'Swarm',
          'Target insolent',
          'Target leader',
          'Target nearest',
          'Target richest',
          'Target strongest',
          'Target weakest',
          'Toy with',
          'Use Terrain'
        ) | Get-Random
      }

      [Void] GetPersonality() {
        $this.Personality = @(
          'Alien',
          'Aloof',
          'Bored',
          'Cautious',
          'Cowardly',
          'Curious',
          'Devious',
          'Distractable',
          'Educated',
          'Embittered',
          'Envious',
          'Erudite',
          'Fanatical',
          'Forgetful',
          'Generous',
          'Hateful',
          'Honorable',
          'Humble',
          'Jaded',
          'Jovial',
          'Legalistic',
          'Manipulative',
          'Megalomaniac',
          'Melancholy',
          'Meticulous',
          'Mystical',
          'Obsessive',
          'Out of Touch',
          'Paranoid',
          'Polite',
          'Psychopathic',
          'Sophisticated',
          'Touchy',
          'Unimpressed',
          'Vain',
          'Xenophobic'
        ) | Get-Random
      }

      [Void] GetWeakness() {
        $this.Weakness = @(
          'Bells',
          'Birdsong',
          'Children',
          'Cold',
          'Cold Iron',
          'Competition',
          'Conversation',
          'Deformity',
          'Flattery',
          'Flowers',
          'Gifts',
          'Gold',
          'Heat',
          'Holy Icon',
          'Holy Water',
          'Home Cooking',
          '# Insanities',
          'Mirrors',
          'Mistletow',
          'Moonlight',
          'Music',
          '# Methods',
          'Phylactery',
          '# Phys. Elements',
          'Puzzles',
          'Riddles',
          'Rituals',
          'Silver',
          'Sunlight',
          'Tears',
          'True Name',
          '# Val Meterials',
          'Weak Spot',
          '# Weapon Items',
          'Wine',
          'Wormwood'
        ) | Get-Random
      }
  }

  function New-MazeMonster {
    param(
      [Health]$Health,
      [Armor]$Armor,
      [AttackBonus]$AttackBonus,
      [StrBonus]$Strength,
      [DexBonus]$Dexterity,
      [WilBonus]$Will,
      [MonsterBase]
      $MonsterBase = ([Enum]::GetValues([MonsterBase]) | Get-Random),
      [String]$Feature,
      [String]$Trait,
      [String]$Ability
    )
    $base = [MazeMonster]::new($Health, $Armor, $AttackBonus, $Strength, $Dexterity, $Will)

    switch ($MonsterBase) {
      'Aerial' { $base.GetAerial() }
      'Terrestrial' { $base.GetTerrestrial() }
      'Aquatic' { $base.GetAquatic() }
    }
    if($Feature){ $base.Feature = $Feature } else { $base.GetFeature()}
    if($Trait){ $base.Trait = $Trait } else { $base.GetTrait()}
    if($Ability){ $base.Ability = $Ability } else { $base.GetAbility()}
    return $base

  }
