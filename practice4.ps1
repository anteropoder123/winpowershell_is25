$nr1 = Read-Host "Sisesta number"
$nr2 = Read-Host "Sisesta veel üks number"

if ($nr1 -gt $nr2)
{echo "The higher number is: $nr1"
}
elseif ($nr1 -lt $nr2)
{echo "The higher number is: $nr2"
}
else
{echo "Two same numbers: $nr1 and $nr2"
}