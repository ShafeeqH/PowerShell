<#

Author: Shafeeq Hameed
Current Date: June 11 2019 

#>
$Today= $(Get-Date).DayOfWeek
$DayMWF = 'Monday','Wednesday','Friday'
if ($Today -in $DayMWF){ 
    Write-Verbose -Message $(10+10) -Verbose
}
else {
    Write-Verbose -Message $(20-10) -Verbose
}

$DayMonth = ($(Get-Date).Month)/2
if ($($DayMonth).GetType() -eq 'Double') {
    Write-Verbose -Message 'Odd' -Verbose
}
else { 
    Write-Verbose -Message 'Even' -Verbose 
}

$TODAY = Get-Date
if($toda.month % 2 -eq 0) {
    Write-Verbose -Message 'Odd' -Verbose 
}
else { 
    Write-Verbose -Message 'Even' -Verbose 
}
