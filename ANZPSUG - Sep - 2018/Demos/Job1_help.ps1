
$Options = New-ScheduledJobOption -RunElevated -RequireNetwork

$Trigger = New-JobTrigger -Daily -At 01:00

$JobSplat = @{
    Name               = 'Update PS Help'
	ScriptBlock        = {Update-Help}
	Trigger            = $Trigger
	ScheduledJobOption = $Options
}

Register-ScheduledJob @JobSplat
