<#

Author: Shafeeq Hameed
Current Date: June 11 2019 

#>
$Today = Get-Date
$Yesterday = $Today.AddDays(-1)

$FilesList= Get-ChildItem -Path "C:\Resources" -Recurse | Where-Object {$_.LastWriteTime -le $Yesterday}
$FilesList.Name

$FilesList= Get-ChildItem -Path "C:\Resources" -Recurse | Where-Object {$_.Name -like '*.PS1'}
$FilesList.Name

