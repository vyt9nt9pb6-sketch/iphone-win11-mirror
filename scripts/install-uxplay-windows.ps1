#Requires -Version 5.1
$ErrorActionPreference = 'Stop'
$repo = 'vyt9nt9pb6-sketch/iphone-win11-mirror'
$tag = 'v2.0.0.1736'
$asset = 'uxplaywindows-installer.msi'
$destDir = Join-Path $env:TEMP 'uxplay-windows-setup'
New-Item -ItemType Directory -Force -Path $destDir | Out-Null
$msi = Join-Path $destDir $asset
$uri = "https://github.com/$repo/releases/download/$tag/$asset"
Write-Host "Downloading $uri"
Invoke-WebRequest -Uri $uri -OutFile $msi -UseBasicParsing
if ((Get-Item $msi).Length -lt 1MB) { throw "Download too small: $msi" }
Write-Host "Installing..."
Start-Process msiexec.exe -ArgumentList @('/i', "`"$msi`"", '/qb') -Wait -Verb RunAs
Write-Host "Done. Start uxplay-windows from Start Menu / tray, then iPhone Control Center > Screen Mirroring."
