function Get-MazeRat {
  param (
    [string]
    $Name
  )
  $rats = $script:MazeRats.Item("Rats")
  if ($Name) {
    $rats | Where-Object { $_.Name -like "*$($Name)*" }
  } else {
    # Return all the PC's
    $rats
  }
}
