$XmlString = @"
<toast>
  <visual>
    <binding template="ToastGeneric">
      <text>Default Notification</text>
      <image src="C:\Images\BurntToast.png" placement="appLogoOverride" hint-crop="circle" />
    </binding>
  </visual>
  <audio src="ms-winsoundevent:Notification.Default" />
</toast>
"@

# Read about this AppID: https://king.geek.nz/2018/02/04/burnttoast-appid-installer/
$AppId = 'King.Geek.NZ!BurntToast'

$null = [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime]
$null = [Windows.Data.Xml.Dom.XmlDocument, Windows.Data.Xml.Dom.XmlDocument, ContentType = WindowsRuntime]

$ToastXml = [Windows.Data.Xml.Dom.XmlDocument]::new()

$ToastXml.LoadXml($XmlString)

$Toast = [Windows.UI.Notifications.ToastNotification]::new($ToastXml)

[Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($AppId).Show($Toast)
