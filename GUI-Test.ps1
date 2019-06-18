<#

Author: Shafeeq Hameed
Current Date: June 13 2019 

#>

<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Untitled
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '766,376'
$Form.text                       = "Form"
$Form.TopMost                    = $false

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 223
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(45,36)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Ping"
$Button1.width                   = 71
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(570,306)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Exit"
$Button2.width                   = 60
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(650,306)
$Button2.Font                    = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($TextBox1,$Button1,$Button2))

$TextBox1.Add_Click({  })
$Button2.Add_Click({ Button2Click })
$Button1.Add_Click({ Button1Click })

function Button2Click {
    $Form.Close()
}

function Button1Click {
    Start-Process Powershell -ArgumentList "Test-Connection $($TextBox1.Text)"    
}

[void]$Form.ShowDialog()


