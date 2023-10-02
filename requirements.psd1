@{
    PSDependOptions = @{
        Target = 'CurrentUser'
    }
    'Pester' = @{
        Version = '5.5.0'
        Parameters = @{
            SkipPublisherCheck = $true
        }
    }
    'PlatyPS' = @{
        Version = '0.14.2'
    }
    'psake' = @{
        Version = '4.9.0'
    }
    'BuildHelpers' = @{
        Version = '2.0.16'
    }
    'PowerShellBuild' = @{
        Version = '0.6.1'
    }
    'PSScriptAnalyzer' = @{
        Version = '1.19.1'
    }
    'RPGDice' = @{
        Version = '0.1.5'
    }
}
