New-PSSession -ComputerName 'Client02' -Credential $(Get-Credential) | Enter-PSSession
Remove-PSSession -id 2  #Remove the Session



Invoke-Command -ComputerName 'Client02' -ScriptBlock {Get-HotFix} -Credential $(Get-Credential) -AsJob
get-job | Where-Object {$._Location -eq 'Client02'} | Receive-Job



