# Funzione che elenca tutte le connessioni attive

function ConnessioniAttiveTCP {

    Get-NetTCPConnection -State Established

}


echo "Connessioni TCP attive: "
echo "--------------------"

ConnessioniAttiveTCP

function ConnessioniAttiveUDP {

    Get-NetUDPEndpoint

}

echo " "

echo "Connessioni UDP attive: "
echo "------------------------"

ConnessioniAttiveUDP