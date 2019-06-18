<#

Author: Shafeeq Hameed
Current Date: June 13 2019 

#>
try{
    $Today=Get-Date
    if($Today.day -eq 25 -and $Today.Month -eq 12){
        Write-Verbose -Message "Today is Christmas" -Verbose
    }
    else{
        Write-Error -Message 'Today is not Christmas' -ErrorAction Stop  
    }
}
catch{
    Write-Verbose -Message "Today was not Christmas" -Verbose
}    


try{
    $Results=Test-NetConnection -ComputerName Client01 -Port 3389 -WarningAction SilentlyContinue
    if ($Results.TcpTestSucceeded){
        Write-Verbose -Message "Test was successful" -Verbose
    }
    else{
        
        Write-Error -Message 'Ping has Failed' -ErrorAction Stop
    }   
}
catch{
    Write-Verbose -Message "The connection failed" -Verbose
}
    
try{
    $Results=Test-Connection $env:COMPUTERNAME -BufferSize 8 -Count 1 -Quiet
    if ($Results){
        Write-Verbose -Message "Ping Successful" -Verbose
    }
    else{
        Write-Error -Message "Ping Failed" -ErrorAction Stop
    }
}
catch{
    Write-Verbose -Message "Ping has Failed" -Verbose
}

try{
    $Results=Test-NetConnection -ComputerName DC01 -Port 389
    if ($Results){
        Write-Verbose -Message "DC Connection Successful" -Verbose
    }
    else{
        Write-Error -Message "DC Connection Failed" -ErrorAction Stop
    }
}
catch{
    Write-Verbose -Message "Failed to Connect to DC" -Verbose
}