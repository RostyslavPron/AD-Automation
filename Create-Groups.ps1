Import-Module ActiveDirectory

New-ADGroup `
-Name "IT-Admins" `
-GroupScope Global

New-ADGroup `
-Name "Sales-Team" `
-GroupScope Global

Add-ADGroupMember -Identity "IT-Admins" -Members "rpron"

Write-Host "Groups created successfully."
