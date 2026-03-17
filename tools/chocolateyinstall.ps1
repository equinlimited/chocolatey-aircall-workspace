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

  checksum      = '9811DA34ED563693BE7C4DCFBA28F461D45976BCD4276DA3B18B6FA6F365C9C7'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs