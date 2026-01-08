$hashtable1 = [ordered]@{Name="John", "Joe", "Mary";DaysWorked=12, 20, 18}
$hashtable2 = [ordered]@{Name="John", "Joe", "Mary";SalaryPerDay=100, 120, 150}

$john_salary = $hashtable1.DaysWorked[0] * $hashtable2.SalaryPerDay[0]
$joe_salary = $hashtable1.DaysWorked[1] * $hashtable2.SalaryPerDay[1]
$mary_salary = $hashtable1.DaysWorked[2] * $hashtable2.SalaryPerDay[2]

$hashtable3 = [ordered]@{Name="John", "Joe", "Mary";Salary=$john_salary, $joe_salary, $mary_salary}

echo $hashtable1
echo "-------------------------------------------------"
echo $hashtable2
echo "-------------------------------------------------"
echo $hashtable3