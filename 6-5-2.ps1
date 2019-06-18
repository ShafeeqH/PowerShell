<#

Author: Shafeeq Hameed
Current Date: June 14 2019 

#>
function write-something {
    [cmdletbinding()]
    param()
        Write-Verbose -Message "Write Something"
}
write-something -Verbose

function write-debugEx {
    [cmdletbinding()]
    param()
        Write-Verbose -Message "Writing Debug Message" -Verbose
        write-debug -Message "This is the Debug Message"    
}

write-debugEx -Debug


