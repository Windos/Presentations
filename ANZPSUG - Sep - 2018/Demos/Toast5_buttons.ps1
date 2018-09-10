
$Time = Get-Date -Format t

$Button = New-BTButton -Content 'Open Report' -Arguments 'C:\Images\report.pdf'

$Splat = @{
    Text    = 'Report Generated', "Completed at $Time"
    AppLogo = 'C:\Images\Finished-icon.png'
    Sound   = 'IM'
    Button  = $Button
}

New-BurntToastNotification @Splat
