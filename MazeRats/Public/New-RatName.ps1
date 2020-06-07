# ToDo: Drop Gender OR include alternatives.
function New-RatName {
    <#
    .SYNOPSIS
        Create a new character name.
    .DESCRIPTION
        Creates a new name based on the original table in MazeRats.
    .EXAMPLE
        PS C:\> New-RatName
        Explanation of what the example does
    .INPUTS
        Inputs (if any)
    .OUTPUTS
        Output's a name.
    .NOTES
        General notes
    #>
    param(
        # Gender
        [Gender]$Gender,
        # Social Rank
        [SocialClass]$Class
    )
    # First Name
    if ($Gender -eq 'Male') {
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
    if ($class -eq 'UpperClass') {
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
