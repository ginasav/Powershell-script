# Creare funzione che accetti un numero come parametro 
# e restituisca true se è pari, altrimenti false

function Pari_dispari ([int]$parametro_num){
if ($parametro_num % 2 -eq 0) {
return $true
} else {
return $false
}
}


Pari_dispari(4)

echo "-------------------"

<# Creare una funzione che accetti un array di stringhe come
parametro e restituisca la stringa più lunga #>

function Get-LongestString {
    param (
        [string[]]$stringhe
    )

     # Verifico che l'array di input non sia nullo o vuoto
    if ($null -eq $stringhe -or $stringhe.Count -eq 0) {
        Write-Error "L'array di stringhe non può essere nullo o vuoto."
        return $null
    }


    # Inizializzo stringa vuota per memorizzare poi stringa
    # più lunga
    $longestString = ""

    foreach ($str in $stringhe) {
        if ($str.Length -gt $longestString.Length) {
            $longestString = $str
        }
    }

    return $longestString
}

$arrayDiStringhe = @('ciao', 'tutti', 'questa è la stringa più lunga')
$stringaPiùLunga = Get-LongestString -stringhe $arrayDiStringhe
Write-Host "La stringa più lunga è: $stringaPiùLunga"

echo "-------------------"

# Creare un array di int e calcolarne la somma

function Sommatoria{
    param (
        [int[]]$array
    )

    # Inizializzo variabile vuota per la sommatoria

    $sum = 0


    # Itero sulla lista di numeri

    foreach ($num in $array) {
        $sum += $num
    }

    return $sum
}


$arrayDiNumeri = @(1, 2, 3, 4, 5)
$sommatoria = Sommatoria -array $arrayDiNumeri
Write-Host "La sommatoria è: $sommatoria"