$loop_count = 0
do {
    Write-Host "Notepad is running"
    $loop_count+=1
    Start-Sleep 1
}while(Get-Process -Name notepad -ErrorAction SilentlyContinue)

Write-Host "The loop ran $loop_count times"