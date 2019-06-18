<#

Author: Shafeeq Hameed
Current Date: June 11 2019 

#>

$YearofFirst= New-Object 'Collections.Generic.List[object]'
$YearofFirst.Add($(Get-date -Month 1 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 2 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 3 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 4 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 5 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 6 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 7 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 8 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 9 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 10 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 11 -Year 2019 -Day 1).DayOfWeek)
$YearofFirst.Add($(Get-date -Month 12 -Year 2019 -Day 1).DayOfWeek)

$i=8
$YearofFirst[$i]

$Yearwithf = ($(Get-Date -Month 6 -Year 2019 -Day 15).DayOfWeek)


if((get-date).Month -eq '12' -and (get-date).day -eq '25'){Write-Host "It's Christmas!"}else{Write-Host "It's not christmas"}



