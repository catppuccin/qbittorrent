$themes = @("latte", "frappe", "macchiato", "mocha")

New-Item -Name "dist" -ItemType "directory" -Force >$null
foreach ($theme in $themes) {
  $themePath = "catppuccin-$theme.qbtheme"
  $themeSrc = "./src/catppuccin-$theme"
  if (!(Test-Path "./tools/rcc.exe")) {
    Write-Host "rcc not found" -ForegroundColor Red
    break
  }
  elseif (!(Test-Path "$themeSrc/resources.qrc")) {
    Write-Host "Missing resources.qrc for $theme theme." -ForegroundColor Red
    continue
  }
  else {
    & "./tools/rcc.exe" "$themeSrc/resources.qrc" -o "./dist/$themePath" -binary
    Write-Host "Compiled $themePath."
  }
}
