<#

Author: Shafeeq Hameed
Current Date: June 12 2019 

#>
$Services=Get-Service
$xbox = $Services | Where-Object -Property Status -eq "Stopped" | Where-Object -Property Name -like "xbl"
$xbox
foreach ($i in $xbox){
    $i
    Pause
}


#$December = $(Get-Date -Month 12 -Year 2019)
#$Days = (Get-Date -Month 1 -Year 2020).Subtract($December)
$Days = @(1..31)
foreach ($Day in $Days) {
    if ($Day -eq 25) {
        Write-Verbose "It is Christmas $($Day)"  -Verbose
    }
    else {
        Write-Verbose "It is not Christmas $($Day)" -Verbose
    }
    
}
[int]$Count=0
$FilesList= Get-ChildItem -Path "C:\Resources" -Recurse | Where-Object {$_.PSIsContainer -eq $false}
foreach ($File in $FilesList) {
    Write-Verbose $File.FullName -Verbose
    $Count++
    Write-Verbose "File Count: $Count" -Verbose
}











