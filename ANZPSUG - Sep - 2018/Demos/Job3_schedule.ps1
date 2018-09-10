
Show-Command -Name 'New-JobTrigger'

# Password expiry warning at login?
New-JobTrigger -AtLogOn

# Deploy software when the computer is turned on?
New-JobTrigger -AtStartup

# Run a script every other day
$Option = New-ScheduledJobOption -RequireNetwork
$Trigger = New-JobTrigger -Daily -At '12:00' -RandomDelay 01:30:00 -DaysInterval 2
Register-ScheduledJob -FilePath C:\Auto\Send-BlogTweet.ps1 -Name 'BlogArchive' -Triger $Trigger -ScheduledJobOption $Option

# Multiple Triggers (and adding Triggers)
$LogOn = New-JobTrigger -AtLogOn
Add-JobTrigger -Name 'Update PS Help' -Trigger $LogOn
Get-ScheduledJob -Name 'Update PS Help' | Select -ExpandProperty JobTriggers
