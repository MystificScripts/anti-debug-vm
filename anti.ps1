$pcc = Get-WmiObject Win32_PortConnector

if ($pcc) {
    Write-Host "Not a virtual machine"
}
else {
    Write-Host "Please Don't run this program in a virtual environment"
}
Read-Host "Press Enter to exit"
