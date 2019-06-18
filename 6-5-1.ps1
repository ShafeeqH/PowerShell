<#

Author: Shafeeq Hameed
Current Date: June 14 2019 

#>

function Get-SecondTuesday {
    $CurrentMonth = $(Get-Date).Month
    switch ($(Get-Date -Month $CurrentMonth -Day 1).DayOfWeek){
        Sunday {$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(9)}
        Monday {$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(8)}
        Tuesday {$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(7)}
        Wednesday{$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(13)}
        Thursday{$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(12)}
        Friday{$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(11)}
        Saturday{$SecondTuesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(10)}
    }
    $SecondTuesday 
}
Get-SecondTuesday

function Get-SecondWednesday {
    $CurrentMonth = $(Get-Date).Month
    switch ($(Get-Date -Month $CurrentMonth -Day 1).DayOfWeek){
        Sunday {$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(10)}
        Monday {$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(9)}
        Tuesday {$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(8)}
        Wednesday{$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(14)}
        Thursday{$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(13)}
        Friday{$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(12)}
        Saturday{$SecondWednesday = (Get-Date -Month $CurrentMonth -Day 1).AddDays(11)}
    }
    $SecondWednesday 
}
Get-SecondWednesday

function Get-FolderSize{
    Get-ChildItem -Path C:\Resources -Recurse -File | Select-Object Length | ForEach-Object {$TotalSize = $_.Length + $TotalSize}
    
    Write-Output -InputObject "Size in KB is: $($TotalSize/1024) KiloBytes"
    Write-Output -InputObject "Size in MB is: $($TotalSize/(1024*1024)) MegaBytes"
    Write-Output -InputObject "Size in GB is: $($TotalSize/((1024*1024)*1024)) GigaBytes"   
}
Get-FolderSize

