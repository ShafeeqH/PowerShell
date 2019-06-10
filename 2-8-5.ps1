<#

Author: Shafeeq Hameed
Current Date: June 10 2019 

#>
$CEREALS = @("cornflakes", "raisin bran", "Special K","Captian Krunch","Frosted Flakes","Count Chocola")
$CEREALS = $CEREALS | Where-Object {$_ -ne 'cornflakes'}
$CEREALS += "CoCo Puffs"
$CEREALS

$CEREALS = New-Object 'Collections.Generic.List[string]'
$CEREALS.Add("cornflakes")
$CEREALS.Add("raisin bran")
$CEREALS


$FilesList= Get-ChildItem -Path "C:\Resources" -Recurse
$Array = @()
    foreach ($file in $FilesList){$Array += $file}
$Array

$Example = New-Object 'Collections.Generic.List[object]'
Get-ChildItem -Path "C:\Resources" -Recurse | ForEach-Object{$Example.Add($_)}
$Example


