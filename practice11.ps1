[float]$nr1 = Read-Host "Type a number"
[float]$nr2 = Read-Host "Type another number"

Write-Host "Calculator" -ForegroundColor Green
Write-Host "1: Addition" -ForegroundColor Yellow
Write-Host "2: Substraction" -ForegroundColor Yellow
Write-Host "3: Division" -ForegroundColor Yellow
Write-Host "4: Multiplication" -ForegroundColor Yellow

$choice = Read-Host "Enter your choice(nr)"

switch($choice){
    1{
        $sum = ($nr1 + $nr2)
    }
    2{
        $sum = ($nr1 - $nr2)
    }
    3{
        $sum = ($nr1 / $nr2)
    }
    4{
        $sum = ($nr1 * $nr2)
    }
}

$rounded_sum = [math]::Round($sum,1)
Write-Host "Your sum is $rounded_sum"