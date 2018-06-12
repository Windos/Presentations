
$Time = Get-Date -Format t

$Text1 = New-BTText -Content 'Report Generated'
$Text2 = New-BTText -Content "Completed at $Time"
$Image1 = New-BTImage -Source 'C:\Images\Finished-icon.png' -AppLogoOverride -Crop Circle
$Audio1 = New-BTAudio -Source 'ms-winsoundevent:Notification.IM'

$Binding1 = New-BTBinding -Children $Text1, $Text2 -AppLogoOverride $Image1
$Visual1 = New-BTVisual -BindingGeneric $Binding1

$Content1 = New-BTContent -Visual $Visual1 -Audio $Audio1 -Launch 'C:\Images\report.pdf' -ActivationType Protocol

Submit-BTNotification -Content $Content1
