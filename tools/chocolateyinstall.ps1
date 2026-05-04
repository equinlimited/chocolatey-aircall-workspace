$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName

$url = 'https://download-electron.aircall.io/aircall-workspace/Aircall-Workspace-1.13.16-x64.msi'

Write-Host "NOTE: This is an UNOFFICIAL, community-maintained Chocolatey package for Aircall Workspace."
Write-Host "It is not maintained or endorsed by Aircall and may lag behind official releases."

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = $url

  softwareName  = 'Aircall Workspace'

  checksum      = 'CF350FBE695B01333964C8DF3B9B82AFFD7BC9AE55EA554B9A628BA9164B7301'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs