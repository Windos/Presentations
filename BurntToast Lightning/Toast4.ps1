$Progress = New-BTProgressBar -Status 'Generating Report' -Value 0.2
New-BurntToastNotification -Text 'Massive Report Incoming!' -ProgressBar $Progress -UniqueIdentifier 'Report1'