Import-Module ActiveDirectory

$Password = ConvertTo-SecureString "Password123!" -AsPlainText -Force

New-ADUser `
-Name "Ross Pron" `
-SamAccountName "rpron" `
-AccountPassword $Password `
-Enabled $true

New-ADUser `
-Name "Sarah Johnson" `
-SamAccountName "sjohnson" `
-AccountPassword $Password `
-Enabled $true

Write-Host "Users created successfully."
