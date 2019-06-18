# Sample Web Services

$Secret = "adfa-adaf-adsf-asdf"
$URI = "http://sccmserver/cmwebsevices"
$Web = New-WebServiceProxy -Uri $URI
$Web.ADComputer($Secret,"CLIENT01")


$webservice = New-WebServiceProxy -Uri 'http://www.webservicex.net/uszip.asmx?WSDL'
$webservice.GetInfoByCity('New York').Table
$webservice.GetInfoByZIP('10286').Table 


$webservice = New-WebServiceProxy -Uri 'http://www.webservicex.net/uszip.asmx?WSDL'
$zip = $webservice.GetInfoByCity('New York').Table
Write-Output $zip

function get-Calc {
    [cmdletbinding()]
    param (
        # No1
        [Parameter(HelpMessage = "This is what we write to screen", Mandatory = $true)]
        [int32]
        $No1,
        # No2
        [Parameter(HelpMessage = "This is what we write 2", Mandatory = $true)]
        [int32]
        $No2
    )
    
$URI = "http://www.dneonline.com/calculator.asmx"
$Web = New-WebServiceProxy -Uri $URI
return $Web.Add($No1,$No2)
}

get-Calc -No1 1 -No2 2

