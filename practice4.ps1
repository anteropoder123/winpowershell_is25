$nr1 = Read-Host "Sisesta number"
$nr2 = Read-Host "Sisesta veel üks number"

if ($nr1 -gt $nr2)
{echo "The higher number is: $nr1"
}
elseif ($nr1 -lt $nr2)
{echo "The higher number is: $nr2"
}
elseif ($nr1 -eq $nr2)
{echo "Two same numbers: $nr1 and $nr2"
}

Write-Host ""

Write-Host "Select Country:" -ForegroundColor Yellow
Write-Host "1 : India" -ForegroundColor Cyan
Write-Host "2 : Australia" -ForegroundColor Cyan
Write-Host "3 : China" -ForegroundColor Cyan
$valik = Read-Host "Please select country"
if ($valik -eq 1)
{Write-Host "India's capital is New Dehli" -ForegroundColor Green
}
elseif ($valik -eq 2)
{Write-Host "Australia's capital is Canberra" -ForegroundColor Green
}
elseif ($valik -eq 3)
{Write-Host "China's capital is Beijing" -ForegroundColor Green
}
else
{Write-Host "You must enter 1, 2 or 3" -ForegroundColor Red
}