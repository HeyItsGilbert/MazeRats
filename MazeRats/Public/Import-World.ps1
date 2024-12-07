function Import-World {
  param (
    [Switch]
    $Force
  )
  if ($Force -or $MazeRats.Rats.Count -eq 0 -or $MazeRats.Monsters.Count -eq 0) {
    $config = Import-Configuration
    $MazeRats.Version = $config.Version
    foreach ($rat in $config.Rats) {
      [void]$MazeRats.Rats.Add([MazeRat]::new($rat))
    }
    foreach ($monster in $config.Monsters) {
      [void]$MazeRats.Monsters.Add([MazeMonster]::new($monster))
    }
    Write-Host "World loaded"
    $config
  } else {
    Write-Warning 'World already loaded! Add -Force to overwrite it.'
  }
}
