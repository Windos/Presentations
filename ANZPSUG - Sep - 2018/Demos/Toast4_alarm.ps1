
$Splat = @{
    Text    = 'Hey You!', 'Time''s up, get off the computer.'
    AppLogo = 'C:\Images\Alarm.png'
    Sound   = 'IM'
    SnoozeAndDismiss = $true
}

New-BurntToastNotification @Splat
