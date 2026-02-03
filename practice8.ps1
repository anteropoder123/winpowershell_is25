While (Get-Process -Name Notepad -ErrorAction SilentlyContinue) {
    Write-Host "Notepad is running"
    Start-Sleep 2
}