<#

Author: Shafeeq Hameed
Current Date: June 12 2019 

#>
$Days = Get-Date
Do {
    $DDay= Get-Date -Date $Days -Format D
    Write-Verbose -Message "$($DDay)" -Verbose
    $Days = $Days.AddDays(1)
}
until ($Days.Month -eq 12 -and $Days.Day -eq 26)


[int]$count=0
do {
    Write-Verbose -Message "Something" -Verbose
    $count++
    Start-Sleep -Seconds 1
} until ($count -eq 60)

$Escape = $false    
do {
    if((Get-Service -Name 'WinRM').Status -ne 'Stopped'){
        Stop-Service -Name 'WinRM'
        Write-Verbose -Message 'Stopping Service...' -Verbose    
    }
    else {
        Start-Service -Name 'WinRM'
        Write-Verbose -Message 'Starting Service' -Verbose
        $Escape = $True
    }
} until ($Escape -eq $true)