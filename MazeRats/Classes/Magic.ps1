class Magic {
    [String]$PhysicalEffect
    [String]$PhysicalElement
    [String]$PhysicalForm
    [String]$EtherealEffect
    [String]$EtherealElement
    [String]$EtherealForm
    [String]$Mutation
    [String]$Insanity
    [String]$Omen

    # Constructor
    Magic() { }

    [String]ToString() {
        $s = ""
        # Deal with possible spells.
        if ($this.PhysicalEffect -and $this.PhysicalForm) {
            $s = ("{0} {1}" -f $this.PhysicalEffect, $this.PhysicalForm)
        }
        if ($this.PhysicalEffect -and $this.EtherealForm) {
            $s = ("{0} {1}" -f $this.PhysicalEffect, $this.EtherealForm)
        }
        if ($this.EtherealEffect -and $this.PhysicalForm) {
            $s = ("{0} {1}" -f $this.EtherealEffect, $this.PhysicalForm)
        }
        if ($this.EtherealEffect -and $this.EtherealForm) {
            $s = ("{0} {1}" -f $this.EtherealEffect, $this.EtherealForm)
        }
        if ($this.PhysicalElement -and $this.PhysicalForm) {
            $s = ("{0} {1}" -f $this.PhysicalElement, $this.PhysicalForm)
        }
        if ($this.PhysicalElement -and $this.EtherealForm) {
            $s = ("{0} {1}" -f $this.PhysicalElement, $this.EtherealForm)
        }
        if ($this.EtherealElement -and $this.PhysicalForm) {
            $s = ("{0} {1}" -f $this.EtherealElement, $this.PhysicalForm)
        }
        if ($this.EtherealElement -and $this.EtherealForm) {
            $s = ("{0} {1}" -f $this.EtherealElement, $this.EtherealForm)
        }
        if ($this.PhysicalEffect -and $this.PhysicalElement) {
            $s = ("{0} {1}" -f $this.PhysicalEffect, $this.PhysicalElement)
        }
        if ($this.PhysicalEffect -and $this.EtherealElement) {
            $s = ("{0} {1}" -f $this.PhysicalEffect, $this.EtherealElement)
        }
        if ($this.EtherealEffect -and $this.PhysicalElement) {
            $s = ("{0} {1}" -f $this.EtherealEffect, $this.PhysicalElement)
        }
        if ($this.EtherealEffect -and $this.EtherealElement) {
            $s = ("{0} {1}" -f $this.EtherealEffect, $this.EtherealElement)
        }

        # ToDo: Add omens and mutations

        return $s
    }

    [Void] GetPhysicalEffect() {
        $this.PhysicalEffect = @(
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
        ) | Get-Random
    }

    [Void] GetPhysicalElement() {
        $this.PhysicalElement = @(
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
        ) | Get-Random
    }

    [Void] GetPhysicalForm() {
        $this.PhysicalForm = @(
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
        ) | Get-Random
    }

    [Void] GetEtherealEffect() {
        $this.EtherealEffect = @(
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
        ) | Get-Random
    }

    [Void] GetEtherealElement() {
        $this.EtherealElement = @(
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
        ) | Get-Random
    }

    [Void] GetEtherealForm() {
        $this.EtherealForm = @(
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
        ) | Get-Random
    }
    [Void] GetMutation() {
        $this.Mutation = @(
            'Ages',
            'Attracs birds',
            'Child-form',
            'Corpulence',
            'Covered in hair',
            '#{Animal} arms',
            '#{Animal} eyes',
            '#{Animal} head',
            '#{Animal} legs',
            '#{Animal} mouth',
            '#{Animal} skin',
            '#{Animal}-form',
            'Cyclops',
            'Extra arms',
            'Extra eyes',
            'Extra legs',
            'Forked tongue',
            'Gender swap',
            'Hunchback',
            '#{Item}-form',
            'Long arms',
            'Lose all hair',
            'Loses teeth',
            '#{Monster Feature}',
            '#{Monster Trait}',
            'No eyes',
            'No mouth',
            '#{PhysicalElemnt}-skin',
            'Second face',
            'Sheds skin',
            'Shrinks',
            'Shrivels',
            'Skin boils',
            'Slime trail',
            'Translucent skin',
            'Weeps blood'
        ) | Get-Random
    }

    [Void] GetInsanity() {
        $this.Insanity = @(
            'Always lies',
            'Always polite',
            '#{Animal}-Form',
            'Cannot count',
            'Faceblind',
            'Fears birds',
            'Fears blood',
            'Fears books',
            'Fears darkness',
            'Fears fire',
            'Fears gold',
            'Fears horses',
            'Fears iron',
            'Fears music',
            'Fears own hand',
            'Fears PC',
            'Fears rain',
            'Fears rivers',
            'Fears silence',
            'Fears the moon',
            'Fears trees',
            'Genius',
            'Gorgeous',
            'Hates Violence',
            'Invisible',
            'Invulnerable',
            '#{Monster Ability}',
            '#{Monster Feature}',
            '#{Monster Trait}',
            'Must sing',
            'New #{Personality}',
            'Say thoughts',
            'Sees dead people'
        ) | Get-Random
    }

    [void] GetOmen() {
        $this.Omen = @(
            'All iron rusts',
            'Animals die',
            'Animals #{mutate}',
            'Birds attack',
            'City appears',
            'Deadly fog',
            'Dream plague',
            'Endless night',
            'Endless rain',
            'Endless storm',
            'Endless twilight',
            'Endless winter',
            'Fae return',
            'Forest appears',
            'Forgetfulness',
            'Graves open',
            'Lamentations',
            'Maggots',
            'Mass #{insanity}',
            'Mass #{mutation}',
            'Mass slumber',
            'Meteor strike',
            'Mirrors speak',
            'No stars',
            'Outsider enters',
            'People shrink',
            'People vanish',
            'Plants wither',
            'Portal opens',
            'Rifts open',
            'Shadows speak',
            'Space distorts',
            'Stones speak',
            'Total silence',
            'Tower appears',
            'Water to blood'
        ) | Get-Random
    }
}
