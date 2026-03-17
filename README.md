# Aircall Workspace – Chocolatey Package (Unofficial)

⚠️ **Unofficial, community-maintained package**
This Chocolatey package is not maintained or endorsed by Aircall.
It may lag behind official releases.

## Installer source

The installer is downloaded directly from Aircall:
https://electron.aircall.io/download/windows_64?appType=aircall-workspace&platform=winMsi

## Support

- Aircall product support: https://support.aircall.io
- Package issues: GitHub Issues in this repo

## Known Issues

Aircall Workspace uses Microsoft Edge WebView2 for authentication.

If installed under a different user account (e.g. administrator), users may encounter sign-in issues such as:

- "We couldn't create the data directory"
- Being prompted to sign in with the wrong account

### Fix

Delete the WebView2 data folder for the current user:

Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Microsoft\Edge\User Data\OneAuthWebView2"

Then restart the application.
