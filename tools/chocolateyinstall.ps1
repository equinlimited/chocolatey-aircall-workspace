$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName

$url = 'https://electron.aircall.io/download/windows_64?appType=aircall-workspace&platform=winMsi'

Write-Host "NOTE: This is an UNOFFICIAL, community-maintained Chocolatey package for Aircall Workspace."
Write-Host "It is not maintained or endorsed by Aircall and may lag behind official releases."

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  url           = $url

  softwareName  = 'Aircall Workspace'

  checksum      = 'C93B77E66DB8E53030E643D60F17F39D51FAABC8AC4B1E7FDD76796C6037C7F9'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs