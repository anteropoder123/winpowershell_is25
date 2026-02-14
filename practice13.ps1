#Main Menu funktsioon
function mainmenu{
    cls
    Write-Host "Area Calculator" -ForegroundColor Green
    Write-Host ""
    Write-Host "Main Menu" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Please select an option to perform the respective task:" -ForegroundColor Yellow

    #Valikud
    Write-Host "1: Area of Square" -ForegroundColor Green
    Write-Host "2: Area of Rectangle" -ForegroundColor Green
    Write-Host "3: Area of Circle" -ForegroundColor Green
    Write-Host "4: Area of Triangle" -ForegroundColor Green
    Write-Host "5: Exit" -ForegroundColor Green

    Write-Host ""
    return $choice = Read-Host "Enter your choice(nr)"
    Write-Host ""
}

#Side Menu funktioon
function sidemenu{
    Write-Host "Please select the next option" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "1: Return to Main Menu"
    Write-Host "2: Exit"
    $choice2 = Read-Host "Enter your choice"
    if ($choice2 -eq 1){
        continue
    }
    elseif ($choice2 -eq 2){
        Write-Host "Exiting the script" -ForegroundColor Yellow
        exit
    }
    else{
        Write-Host "Enter correct option" -ForegroundColor Red
        sidemenu
    }
}

#Ruudu pindala
function square{
    cls
    Write-Host "Area of Square" -ForegroundColor Green
    Write-Host ""
    [float]$a = Read-Host "Enter a side of the square"
    Write-Host ""
    $area = [Math]::Round($a * $a, 2)
    Write-Host "Area of the square: $area"
    Write-Host ""
}

#Ristküliku pindala
function rectangle{
    cls
    Write-Host "Area of Rectangle" -ForegroundColor Green
    Write-Host ""
    [float]$a = Read-Host "Enter a side of the rectangle"
    [float]$b = Read-Host "Enter a second side of the rectangle"
    Write-Host ""
    $area = [Math]::Round($a * $b, 2)
    Write-Host "Area of the rectangle: $area"
    Write-Host ""
}

#Ringi pindala
function circle{
    cls
    Write-Host "Area of Circle" -ForegroundColor Green
    Write-Host ""
    [float]$r = Read-Host "Enter a radius of the circle"
    Write-Host ""
    $area = [Math]::Round([Math]::PI * $r * $r, 2)
    Write-Host "Area of the circle: $area"
    Write-Host ""
}

#Kolmnurga pindala
function triangle{
    cls
    Write-Host "Area of Triangle" -ForegroundColor Green
    Write-Host ""
    [float]$a = Read-Host "Enter a base side of the triangle"
    [float]$h = Read-Host "Enter a height of the triangle"
    Write-Host ""
    $area = [Math]::Round($a * $h /2, 2)
    Write-Host "Area of the triangle: $area"
    Write-Host ""
}

#Main Menu valikute tulemused
do{
    $choice = mainmenu
    switch($choice){
        1{
            square
            sidemenu
        }
        2{
            rectangle
            sidemenu
        }
        3{
            circle
            sidemenu
        }
        4{
            triangle
            sidemenu
        }
        5{
            cls
            Write-Host "Exiting the script" -ForegroundColor Yellow
            break
        }
    }
} while($choice -ne "5")