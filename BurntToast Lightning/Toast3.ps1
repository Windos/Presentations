$Button = New-BTButton -Content 'Open Report' -Arguments '\\srv\reports\report.pdf'
New-BurntToastNotification -Text 'Report Generated',  'It took 6 hours!' -Button $Button