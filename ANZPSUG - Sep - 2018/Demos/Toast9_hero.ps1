
$Text1 = New-BTText -Content 'Final Demo'
$Text2 = New-BTText -Content "Thanks for having us, Spark HB!"
$Image1 = New-BTImage -Source 'C:\Images\BurntToast.png' -AppLogoOverride -Crop None
$Audio1 = New-BTAudio -Source 'ms-winsoundevent:Notification.Mail'

$HeroImage = New-BTImage -Source 'C:\Images\SparkHB.jpg' -HeroImage
$SparkImage = New-BTImage -Source 'C:\Images\Spark.png'

$Binding1 = New-BTBinding -Children $Text1, $SparkImage, $Text2 -AppLogoOverride $Image1 -HeroImage $HeroImage
$Visual1 = New-BTVisual -BindingGeneric $Binding1

$Content1 = New-BTContent -Visual $Visual1 -Audio $Audio1 -Duration Long

Submit-BTNotification -Content $Content1
