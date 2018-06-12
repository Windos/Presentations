
$Splat = @{
    Text    = 'Hey You!', 'Time''s up, get off the computer.'
    AppLogo = 'C:\Images\Alarm.png'
    Sound   = 'Alarm5'
    SnoozeAndDismiss = $true
}

New-BurntToastNotification @Splat
