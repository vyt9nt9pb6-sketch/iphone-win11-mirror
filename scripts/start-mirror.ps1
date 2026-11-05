#Requires -Version 5.1
$candidates = @(
  "$env:ProgramFiles\uxplay-windows\uxplay-windows.exe",
  "$env:LOCALAPPDATA\Programs\uxplay-windows\uxplay-windows.exe",
  "${env:ProgramFiles(x86)}\uxplay-windows\uxplay-windows.exe"
)
$exe = $candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $exe) {
  Write-Error "uxplay-windows not found. Run scripts/install-uxplay-windows.ps1 first."
  exit 1
}
Start-Process $exe
Write-Host "Started: $exe"
