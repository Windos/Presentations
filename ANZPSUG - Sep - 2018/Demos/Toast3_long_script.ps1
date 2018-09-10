
# <- Imagine a script which takes a long time to run is here ->

$Time = Get-Date -Format t

$Splat = @{
    Text    = 'Script Completed', "Completed at $Time"
    AppLogo = 'C:\Images\Finished-icon.png'
    Sound   = 'Reminder'
}

New-BurntToastNotification @Splat
