#Version_1
#Davey Hobbs
$setManualUpdates = "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe"
$ARGG = "/configure -scheduleManual -silent"
$dellCommandPath = "C:\Program Files\Dell\CommandUpdate"

if (Test-Path -Path $dellCommandPath) {
    Start-Process $setManualUpdates $ARGG
}
else {
    exit 101
    #101 will refer to Dell Command Update not being installed.
}