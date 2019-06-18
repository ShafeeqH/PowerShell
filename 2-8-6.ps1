<#

Author: Shafeeq Hameed
Current Date: June 11 2019 

#>
$CR1= [ordered]@{Name=[string]'CornFlakes';Healthy=[bool]$True;Calories=[int]10}
$CR2= [ordered]@{Name='Raisin Bran';Healthy=$True;Calories=10}
$CR3= [ordered]@{Name='Special K';Healthy=$True;Calories=10}
$CR4= [ordered]@{Name='Captian Krunch';Healthy=$FALSE;Calories=750}
$CR5= [ordered]@{Name='Frosted Flakes';Healthy=$FALSE;Calories=250}
$CR6= [ordered]@{Name='Count Chocola';Healthy=$FALSE;Calories=1000}

$CR1 = New-Object -TypeName psobject -Property $CR1
$CR2 = New-Object -TypeName psobject -Property $CR2
$CR3 = New-Object -TypeName psobject -Property $CR3
$CR4 = New-Object -TypeName psobject -Property $CR4
$CR5 = New-Object -TypeName psobject -Property $CR5
$CR6 = New-Object -TypeName psobject -Property $CR6

$CEREALS = @()
$CEREALS += $CR1
$CEREALS += $CR2
$CEREALS += $CR3
$CEREALS += $CR4
$CEREALS += $CR5
$CEREALS += $CR6

$HCEREALS = New-Object 'Collections.Generic.List[object]' 
$HCEREALS = $CEREALS | Where-Object{$_.Healthy -eq $True} | ForEach-Object {$_} 
$HCEREALS


$BADCEREALS = @()
$CEREALS | Where-Object{$_.Healthy -eq $FALSE} | ForEach-Object {Write-Output -InputObject $_}
$BADCEREALS
