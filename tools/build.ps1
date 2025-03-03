$themes = @("latte", "frappe", "macchiato", "mocha")

# qt's rcc.exe is buried in a huge sdk, but thankfully this exists
$rccUrl = "https://github.com/zedxxx/rccextended/releases/download/v1.0.5/RccExtended-v1.0.5-win32.zip"
$rccZip = "./tools/RccExtended.zip"
$rccPath = "./tools/rcc.exe"

if (!(Test-Path $rccPath)) {
    Write-Host "rcc.exe not found, downloading..."
    Invoke-WebRequest -Uri $rccUrl -OutFile $rccZip
    Write-Host "Extracting rcc.exe..."
    Expand-Archive -Path $rccZip -DestinationPath "./tools" -Force
    Remove-Item $rccZip
}

New-Item -Name "dist" -ItemType "directory" -Force >$null
foreach ($theme in $themes) {
  $themePath = "catppuccin-$theme.qbtheme"
  $themeSrc = "./src/catppuccin-$theme"
  if (!(Test-Path "$themeSrc/resources.qrc")) {
    Write-Host "Missing resources.qrc for $theme theme." -ForegroundColor Red
    continue
  }
  else {
    & $rccPath "$themeSrc/resources.qrc" -o "./dist/$themePath" -binary
    Write-Host "Compiled $themePath."
  }
}
