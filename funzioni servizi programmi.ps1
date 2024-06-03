# stampare i servizi Windows
# Get-Service | Sort-Object -Property Status, Name | Format-Table -AutoSize

function StampaServiziWindows {
    
    echo "Servizi su Windows"
    Get-Service | Sort-Object -Property Status, Name | Format-Table -AutoSize    

}




function StampaProgrammiInstallati {

    echo "Programmi installati su Windows"
    Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion

}


StampaServiziWindows

echo "-----------------------------------------"

StampaProgrammiInstallati