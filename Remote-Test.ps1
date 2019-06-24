New-PSSession -ComputerName 'Client02' -Credential $(Get-Credential) | Enter-PSSession
Remove-PSSession -id 2  #Remove the Session



Invoke-Command -ComputerName 'ADM-V-SCCM01' -ScriptBlock {Get-HotFix} -Credential $(Get-Credential) -AsJob
get-job | Where-Object {$_.Location -eq 'ADM-V-SCCM01'} | Receive-Job



