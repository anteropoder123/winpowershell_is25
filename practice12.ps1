#Parameetrita
function Running-Services{
    $running = Get-Service | where{$_.Status -eq "running"}
    Write-Host "Running Services:" $running.Count
}

function Stopped-Services{
    $stopped = Get-Service | where{$_.Status -eq "stopped"}
    Write-Host "Stopped services:" $stopped.Count
}

#Parameetriga
function Services-func{
    param(
        [string]$status
    )

    $running = Get-Service | where{$_.Status -eq $status}
    Write-Host "Running services:" $running.Count
}