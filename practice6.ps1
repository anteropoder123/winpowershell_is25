$result = @()
$ages = Import-Csv C:\Users\Antero\powershellscript\ps_ebook\ages.txt

$ages | ForEach-Object {

if ([int]$_.Age -ge 4 -and [int]$_.Age -le 10) {
$School = "Junior"
}

elseif ([int]$_.Age -ge 11 -and [int]$_.Age -le 17) {
$school = "Senior"
}

$result += [PSCustomObject]@{
Name = $_.Name
School = $School
}
}

$result

$result | Out-File "C:\Users\Antero\powershellscript\ps_ebook\School"