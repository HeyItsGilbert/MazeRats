@{
    ExcludeRules = @(
        'PSAvoidUsingWriteHost', # We print to a console!
        'PSUseShouldProcessForStateChangingFunctions'
    )
}
