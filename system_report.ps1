$nimi = Read-Host "Sisesta oma nimi"
$tervituse_kordus = Read-Host "Mitu korda tervitust kuvada(arv)"

#Tervitus (arv) kordi
for ($i = 1;$i -le $tervituse_kordus;$i++){
Write-Host "Tere, $nimi! ($i)"
}

#Süsteemiinfo
echo ""
echo "Arvuti nimi: $env:COMPUTERNAME"
echo "Kasutaja nimi: $env:USERNAME"
echo "PowerShelli versiooni tabel: " $PSVersionTable

echo ""
# Kuvame 3 töötavat protsessi
echo "Kolm töötavat protsessi:"
Get-Process | Select-Object -First 3 | Format-Table -AutoSize

echo ""
# Kuvame 3 teenust koos olekuga
echo "Kolm teenust koos olekuga:"
Get-Service | Select-Object -First 3 Name, Status | Format-Table -AutoSize

echo ""
#PowerShelli versiooni kontroll
if ($PSVersionTable.PSVersion.Major -lt 5){
echo "PowerShelli versioon on alla 5-e"
}
else{
echo "PowerShelli versioon on sobiv"
}
echo ""

Write-Host "==========================="
Write-Host "Script finished successfully"
Write-Host "==========================="