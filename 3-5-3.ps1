<#

Author: Shafeeq Hameed
Current Date: June 12 2019 

#>
while ((Get-Service -Name 'WinRM').Status -eq 'Stopped') {
    Write-Verbose 'Service is not Running' -Verbose
    Write-Verbose 'Waiting...' -Verbose
    Start-Sleep -Seconds 10
    Write-Verbose 'Starting Service' -Verbose
    Start-Service -Name 'WinRM'
}

while ((Get-Date).Hour -ne '17') {
    Write-Verbose 'Not 5PM Yet...' -Verbose
    Start-Sleep -Seconds 300
}




