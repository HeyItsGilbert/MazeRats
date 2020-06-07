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

    if ($Null -eq $Name) {
        $Name = New-RatName -Gender $Gender -Class $Class
    }

    $base = [MazeRat]::new($Name, 1)
    $base.Health = 4
    $base.MaxHealth = 4
    # Roll or Choose abilitiies
    $base.Strength, $base.Dexterity, $base.Will = switch (Get-Random -Maximum 6) {
        1 { 2, 1, 0 }
        2 { 2, 0, 1 }
        3 { 1, 2, 0 }
        4 { 0, 2, 1}
        5 { 1, 0, 2 }
        6 { 0, 1, 2 }
    }
    [void] $base.GetAppearance()
    [void] $base.GetPhysicalDetail()
    [void] $base.GetBackground()
    [void] $base.GetClothing()
    [void] $base.GetPersonality()
    [void] $base.GetMannerism()
    return $base
}
