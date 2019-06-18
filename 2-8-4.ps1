<#

Author: Shafeeq Hameed
Current Date: June 10 2019 

#>
$Example1 = "A string of Text"
$Example1.Substring($($Example1.IndexOf("Text")),4) 
$String1="29"
$String2="Your instructior is only"
$String3= "$($String2) $($String1)"
$String3

$StartingString = "The house is gray and the sky is blue"
#$String4= "$($StartingString.Substring(0,13))blue $($StartingString.Substring(18,15))gray"
#$String4 ="$($StartingString.Substring(0,13))$($StartingString.Substring($StartingString.Length -4))$($StartingString.Substring(17,16))$($StartingString.Substring(13,5))"
$String4 = $StartingString.Replace("gray","1")
$String4 = $String4.Replace("blue","2")
$String4 = $String4.Replace("1","blue")
$String4 = $String4.Replace("2","gray")


$String4
