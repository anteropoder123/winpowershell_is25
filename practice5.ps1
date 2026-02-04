#notepad käivitamine
Start-Process notepad.exe
Start-Process notepad.exe

#notepad id ja nimi
Get-Process | Where-Object{$_.Name -like "notepad"} | Select-Object ProcessName, Id

#kausta tegemine
$folderPath = "C:\Temp\Test"
New-Item -Path $folderPath -ItemType Directory -Force

#failide lisamine kausta
New-Item "$folderPath\file.csv" -ItemType File
Copy-Item "C:\Users\Antero\powershellscript\ps_ebook\ages.txt" -Destination $folderPath -Force
Copy-Item "C:\Users\Antero\powershellscript\ps_ebook\report.txt" -Destination $folderPath -Force

#kausta sisu kuvamine
$folderPath = "C:\Temp\Test"
$allFiles = Get-ChildItem -Path $folderPath
$allFiles | Format-Table Name, Length

#csv file suurus KB ja MB
$csvFile = Get-ChildItem -Path $folderPath -Filter "*.csv"

# Suurus kilobaitides ja megabaitides
$sizeKB = [math]::Round($csvFile.Length / 1KB, 2)
$sizeMB = [math]::Round($csvFile.Length / 1MB, 2)

Write-Output "CSV File: $($csvFile.Name)"
Write-Output "Size: $sizeKB KB / $sizeMB MB"