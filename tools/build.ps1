$themes = @("latte", "frappe", "macchiato", "mocha")

foreach ($theme in $themes) {
  $themePath = "$theme.qbtheme"
  $themeSrc = "./../src/$theme"
  if (!(Test-Path "./rcc.exe")) {
    Write-Host "rcc not found" -ForegroundColor Red
    break
  }
  elseif (!(Test-Path "$themeSrc/resources.qrc")) {
    Write-Host "Missing resources.qrc for $theme theme." -ForegroundColor Red
    continue
  }
  else {
    & "./rcc.exe" "$themeSrc/resources.qrc" -o "./../$themePath" -binary
    Write-Host "Compiled $themePath."
  }
}
