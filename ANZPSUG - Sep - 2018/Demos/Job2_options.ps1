
New-ScheduledJobOption

$Option = New-ScheduledJobOption -ContinueIfGoingOnBattery -StartIfOnBattery
Register-ScheduledJob -Name 'OptionObject' -ScheduledJobOption $Option -ScriptBlock {
    # Nothing!
}

Get-ScheduledJobOption -Name 'Update PS Help'

Get-ScheduledJobOption -Name 'Update PS Help' |
    Set-ScheduledJobOption -ContinueIfGoingOnBattery -StartIfOnBattery
