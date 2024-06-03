 
 # Dichiarare una variabile di tipo stringa e assegnarle un valore
$stringa = "Questa è una stringa"

# Dichiarare una variabile di tipo numerico e assegnarle un valore
$numero = 10

# Creare una variabile booleana e assegnarle un valore
$variabile_booleana = $true

echo $stringa

$stringa = "Questa è la NUOVA stringa"

echo $stringa

$nome = "Gina"
$cognome = "Saviano"

Write-Host "Io sono $nome $cognome"


$mio_nome = $nome + $cognome


$mio_nome = $nome + $cognome

echo "Mi chiamo $mio_nome"

$mio_nome = $nome + " " + $cognome

echo "Mi chiamo $mio_nome"


# condizionale if

$mia_stringa = "Hello World!"
if ($mia_stringa -like "*World*"){
Write-Host "La stringa contiene la parola 'World'"
} else {
Write-Host "La stringa non contiene la parola 'World'"
}

#utilizzare if-else per gestire due possibili percorsi di esecuzione

 
#funzione che accetti due parametri numerici e restituisca la loro somma

$num1 = 10
$num2 = 5

$somma = $num1 + $num2

echo "Il risultato di $num1 e $num2 è $somma"


PS C:\> function Somma ($num1, $num2) {
$risultato = $num1 + $num2
return $risultato
}

PS C:\> function Somma ($parametro1, $parametro2) {
$risultato = $parametro1 + $parametro2
return $risultato
}

$risultato = Somma -parametro1 5 -parametro2 10

Write-Host "La somma di 5 e 10 è $risultato"
