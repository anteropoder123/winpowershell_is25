$students = 20
$colors = @("red", "green", "yellow", "blue")
$result = @()

for ($i = 1; $i -le $students; $i++) {
$group = Get-Random -InputObject $colors
$result += [PSCustomObject]@{
RoleNumber = $i
Group = $group
}
}

$Result | Format-Table