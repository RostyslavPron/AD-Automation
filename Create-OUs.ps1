Import-Module ActiveDirectory

$Domain = "DC=company,DC=local"

$OUs = @(
    "IT",
    "HR",
    "Sales",
    "Finance"
)

foreach ($OU in $OUs) {
    New-ADOrganizationalUnit -Name $OU -Path $Domain
}

Write-Host "Organizational Units created successfully."
