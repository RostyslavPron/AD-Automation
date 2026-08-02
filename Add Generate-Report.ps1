Import-Module ActiveDirectory

Get-ADUser -Filter * |
Select Name, SamAccountName |
Export-Csv Users.csv -NoTypeInformation

Get-ADGroup -Filter * |
Select Name |
Export-Csv Groups.csv -NoTypeInformation

Write-Host "Reports generated."
