
# New-BurntToastNotification is the equivalent of...

$Text1 = New-BTText -Content 'Default Notification'
$ImagePath = Join-Path -Path (Get-Module BurntToast -ListAvailable).ModuleBase -ChildPath 'Images\BurntToast.png'
$Image1 = New-BTImage -Source $ImagePath[0] -AppLogoOverride -Crop Circle
$Audio1 = New-BTAudio -Source 'ms-winsoundevent:Notification.Default'

$Binding1 = New-BTBinding -Children $Text1 -AppLogoOverride $Image1
$Visual1 = New-BTVisual -BindingGeneric $Binding1
$Content1 = New-BTContent -Visual $Visual1 -Audio $Audio1

Submit-BTNotification -Content $Content1
