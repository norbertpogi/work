try {
    Clear-Host
    Echo "Keep alive w/ scroll lock..."
    $WShell = New-Object -com "Wscript.Shell"
    
    while ($true) {
        $WShell.sendkeys("{SCROLLLOCK}")
        Start-Sleep -Milliseconds 100
        $WShell.sendkeys("{SCROLLLOCK}")
        Start-Sleep -Seconds 240
    }
}
catch {
    Write-Host "Error: $($Error[0])"
}
