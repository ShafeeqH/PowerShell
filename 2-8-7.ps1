<#

Author: Shafeeq Hameed
Current Date: June 11 2019 

#>
[string]$ADGroupName = "Group-Name-01"
$list = $ADGroupName.Split("-")
[int]$Seed = $list[$($list.Length-1)]

#[int]$Seed = $ADGroupName.Substring($($ADGroupName.Length -1))
$Seed = @(1..10)
$ADGroupList = @()



$Seed++


$ADGroupName02= "$($ADGroupName.Substring(0,$ADGroupName.Length - $Seed.Length))$($Seed)"
$ADGroupName02



$ADGroupNameArray= New-Object 'Collections.Generic.List[object]'










