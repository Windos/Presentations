
<#

    10 concepts, 11 demos

    Demos may have unexpected results (and that's fine)

    Numerous VS Code & PowerShell tools being used
        If you're interested in the mechanics let's chat afterwards

    You won't see me run any code, that's happening automatically

#>

#region Example Setup
Add-Type -Path 'C:\temp\Selenium\WebDriver.dll'

$Global:Selenium = New-Object OpenQA.Selenium.Chrome.ChromeDriver
$Url = 'http://localhost'

Start-RunBucket -Control {Start-Sleep -Milliseconds 5} -Variation {} -Title 'Example'

$Global:Selenium.Navigate().GoToUrl($Url)
#endregion
