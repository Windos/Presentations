
# Something is missing...
mspaint.exe C:\Images\GUI-TaskTrigger.png

# Script Logic... included in 'C:\Auto\UserReport.ps1'
    $DayToRun = 'Friday'
    $OccuranceInMonth = -1 # It's an array so 1 = 2nd

    $Now = Get-Date
    $PossibleDays = @()
    0..31 | ForEach-Object -Process {
        $TestDate = (Get-Date -Year $Now.Year -Month $Now.Month -Day 1).AddDays($_)
        if ($TestDate.Month -eq $Now.Month)
        {
            if ($TestDate.DayOfWeek -eq $DayToRun) {
                $PossibleDays += $TestDate.Day
            }
        }
    }
    $ValidRunDate = Get-Date -Year $Now.Year -Month $Now.Month -Day $PossibleDays[$OccuranceInMonth]

    if ($Now.Date -eq $ValidRunDate.Date)
    {
        # Actual script goes here...
    }

# Scheduled Job!
$Trigger = New-JobTrigger -At '8:30' -DaysOfWeek Friday -Weekly
Register-ScheduledJob -FilePath C:\Auto\UserReport.ps1 -Name 'Monthly Report' -Trigger $Trigger

# I published a script to help make this easier to digest: https://king.geek.nz/2017/09/26/recurrence-pattern/
