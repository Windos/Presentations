$Progress = New-BTProgressBar -Status 'Completed' -Value 1.0
New-BurntToastNotification -Text 'Massive Report Generated!' -ProgressBar $Progress -UniqueIdentifier 'Report1'