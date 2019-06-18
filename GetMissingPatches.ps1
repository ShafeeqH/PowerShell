$MissingPatches = Get-WmiObject -ComputerName $env:computername -ErrorAction Stop -Query 'SELECT * FROM CCM_SoftwareUpdate' -Namespace ROOT\ccm\ClientSDK -Verbose:$false # | ft ArticleID, Name -AutoSize
foreach ($MissingPatch in $MissingPatches) {
    Write-Verbose $MissingPatch.Name -Verbose
    $count++
}
$count