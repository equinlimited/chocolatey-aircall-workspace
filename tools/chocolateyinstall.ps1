$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName

$url = 'https://download-electron.aircall.io/aircall-workspace/Aircall-Workspace-1.13.5-x64.msi'

Write-Host "NOTE: This is an UNOFFICIAL, community-maintained Chocolatey package for Aircall Workspace."
Write-Host "It is not maintained or endorsed by Aircall and may lag behind official releases."

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = $url

  softwareName  = 'Aircall Workspace'

  checksum      = 'EAC013BD4B48305040FA68892994FF811C583AA1C1DC52DF0168832348F5AC68'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs