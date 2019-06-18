Import-Module ActiveDirectory
get-aduser  -identity "Student" -Server DC01 -Properties *

get-aduser -identity "Student" -Server DC01 -Properties passwordlastset

