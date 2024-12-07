function Export-World {
  [CmdletBinding(SupportsShouldProcess = $True)]
  param ()

  if ($PSCmdlet.ShouldProcess("Configuration", "Save configuration")) {
    $config = @{
      Rats = [System.Collections.ArrayList]@()
      Monsters = [System.Collections.ArrayList]@()
    }
    foreach ($pc in $MazeRats.Rats) {
      [void]$config.Rats.Add($pc.AsJson())
    }
    foreach ($monster in $MazeRats.Monsters) {
      [void]$config.Monsters.Add($monster.AsJson())
    }
    $config | Export-Configuration
  }
}
