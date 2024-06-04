**!! https://www.techthoughts.info/learn-powershell-series/ !! serie riguardante powershell molto utile**

Aprire Windows Powershell ISE (x86) come Amministratore, quindi tasto destro e --> "Esegui come Amministratore".

A questo punto, aprire un nuovo script e salvarlo con <nome-script.ps1>.

N.B. .ps1 è l'estensione degli script in Powershell.

PowerShell è una shell della riga di comando e un linguaggio di scripting tutto in uno. È stato progettato come un motore di attività che utilizza i cmdlet per eseguire il wrapper delle attività che le persone devono eseguire. In PowerShell è possibile eseguire comandi su computer locali o remoti. Puoi svolgere attività come la gestione degli utenti e l'automazione dei flussi di lavoro.
Che tu faccia parte di un team operativo o di un team di sviluppo che adotta i principi DevOps, PowerShell può aiutarti. Puoi usarlo per affrontare varie attività, come la gestione delle risorse cloud e l'integrazione continua e la distribuzione continua (CI/CD). PowerShell offre molti comandi utili, ma puoi espandere le sue funzionalità in qualsiasi momento installando i moduli.
Da <https://learn.microsoft.com/en-us/training/modules/introduction-to-powershell/1-introduction> 

PowerShell Documentation: https://docs.microsoft.com/en-us/powershell/
PowerShell Documentation at GitHub: https://github.com/PowerShell/PowerShell/tree/master/docs/learning-powershell

**Alcuni termini importanti per powershell:**
- Un cmdlet è un'utilità della riga di comando nativa di PowerShell. Questi esistono solo all'interno di PowerShell e sono scritti in un linguaggio .NET Framework come C#. IL
word cmdlet è univoco per PowerShell, quindi se lo aggiungi alle parole chiave di ricerca su
Google o Bing, i risultati ottenuti saranno principalmente legati a PowerShell.

- Una funzione può essere simile a un cmdlet, ma anziché essere scritta in .NET
linguaggio, le funzioni sono scritte nel linguaggio di scripting di PowerShell.
- Un workflow è un tipo speciale di funzione che si collega all'esecuzione del flusso di lavoro di PowerShell.
- Un'applicazione è qualsiasi tipo di eseguibile esterno, comprese le utilità della riga di comando come Ping e Ipconfig.
- Command è il termine generico che usiamo per riferirci a uno o tutti i precedenti
termini.
- Un alias è una scorciatoia per un comando


 <img width="855" alt="315228560-ea717d46-a4c4-4cf5-8cff-004a0a05c195" src="https://github.com/ginasav/Powershell-script/assets/132621166/b558de34-9f7f-46ba-b5e9-7d2f4145a98d">

 **Comandi principali:**
 
<img width="854" alt="315229284-8f34cad6-850d-489d-963a-fdb46f6e0075" src="https://github.com/ginasav/Powershell-script/assets/132621166/637e120c-5c23-4379-b34e-029c8ee5392e">

Commenti: 
 ```
 <# Multiple line Comment.........  
    .........  
    ....................#>  
    Statement-1  
    Statement-2  
    Statement-N  
 ```

 Differenza tra "echo" e "Write-Host"
 
In sintesi, Write-Host viene utilizzato per visualizzare messaggi o output formattato direttamente sulla console, mentre echo viene utilizzato per inviare l'output come oggetto al comando successivo nella pipeline. La scelta tra loro dipende dal caso d'uso specifico e dal comportamento desiderato.
 
Da <https://www.blackbox.ai/chat/kqNuenl>
 
**Execution policy**
 
Restricted: Nessun script è eseguito.
 
RemoteSigned:vengono eseguiti solo gli script scaricati da Internet e questi devono essere firmati dall'editore fidato.

 ```
Unrestricted: Tutti gli script sono eseguiti
 
AllSigned: Solo gli script firmati da un autore fidato.
 
Set-ExecutionPolicy <name_of_the_execution_policy> 
 
 ```

**Struttura per i comandi in powershell**

![image](https://github.com/ginasav/Powershell-script/assets/132621166/1f456bb3-6468-47c3-98ad-11a08893af3f)

Possiamo anche richiedere aiuto a powershell se ci troviamo in difficoltà con _get-help -examples_


Per le variabili esse vengono assegnate come in bash. 
# Get the current ACL for the file
$acl = Get-Acl -Path "C:\path\to\your\file.txt"
 
# Create a new access rule for the user or group you want to grant write permission to
$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("username","Write","Allow")
 
# Add the new access rule to the ACL
$acl.AddAccessRule($accessRule)
 
# Set the new ACL for the file
Set-Acl -Path "C:\path\to\your\file.txt" -AclObject $acl

How to change permissions in executable for .ps1 using SID username
 
# Definisci il percorso del file di script PowerShell
$ps1Path = "C:\path\to\your\script.ps1"
 
# Definisci il nome dell'utente locale
$username = "Username"
 
# Ottieni l'oggetto utente locale (necessario il modulo Microsoft.PowerShell.LocalAccounts per PowerShell 7 e versioni successive)
$user = Get-LocalUser -Name $username
 
# Ottieni il SID dell'utente
$userSid = $user.SID
 
# Recupera l'ACL corrente del file
$acl = Get-Acl -Path $ps1Path
 
# Crea una nuova regola di accesso utilizzando il SID
$fileSystemAccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($userSid, "FullControl", "Allow")
 
# Aggiungi la nuova regola all'ACL
$acl.SetAccessRule($fileSystemAccessRule)
 
# Applica il nuovo ACL al file
Set-Acl -Path $ps1Path -AclObject $acl

**Per creare un array funziona similare agli altri linguaggi di programmazione ma, prima, delle parentesi va inserito un @**
 ```
# Create an array of strings
$fruits = @("Apple", "Banana", "Orange")

# Create an array of integers
$numbers = @(1, 2, 3, 4, 5)

# Create an array of mixed types
$mixed = @(1, "Two", 3.5, $true)
 ```
 A questo punto per accedere agli elementi vi sono diversi modi:
 
 ```
# Access individual elements using index
Write-Host "First fruit: $($fruits[0])"

# Update an element
$fruits[1] = "Grapes"

# Add elements
$fruits += "Pineapple"

# Remove an element
$fruits -= "Orange"

# Display all elements
Write-Host "All fruits: $($fruits -join ', ')"
 ```

Per aggiungere un elemento all'array:
 ```
# Create an empty array
$dynamicArray = @()

# Add elements dynamically
$dynamicArray += "Item1"
$dynamicArray += "Item2"
$dynamicArray += "Item3"
 ```

Per le stringhe l'idea è sempre la similarità con bash:
Operatori Split e Join

In PowerShell non esistono operatori di divisione e unione specifici come in altri linguaggi di programmazione. Tuttavia, è possibile ottenere la suddivisione e l'unione delle stringhe utilizzando vari metodi e operatori disponibili in PowerShell.

Divisione delle stringhe:
È possibile dividere una stringa in un array di sottostringhe utilizzando il metodo Split() o l'operatore -split.

Utilizzando il metodo Split():
 ```
$stringa = "mela,banana,arancia"
$fruttaArray = $string.Split(",")
 ```
Utilizzando l'operatore -split:
 ```
$stringa = "mela,banana,arancia"
$fruitsArray = $string -split ","
 ```
Unione delle stringhe:
È possibile unire un array di stringhe in un'unica stringa utilizzando l'operatore -join o utilizzando il metodo Join().

Utilizzando l'operatore -join:
 ```
$fruitsArray = "mela", "banana", "arancia"
$stringafrutta = $fruttaArray -join ","
 ```
Utilizzando il metodo Join():
 ```
$fruitsArray = "mela", "banana", "arancia"
$stringafrutta = $fruttaArray -join ","
 ```
Esempi:
Divisione di una stringa:
 ```
$stringa = "mela,banana,arancia"
$fruttaArray = $string.Split(",")
foreach ($frutta in $fruitsArray) {
    Write-Host $frutta
}
 ```
Unione delle stringhe:
 ```
$fruitsArray = "mela", "banana", "arancia"
$stringafrutta = $fruttaArray -join ","
 ```

Questi metodi consentono di dividere le stringhe in matrici e di unire le matrici in stringhe, offrendo flessibilità nella manipolazione e nell'elaborazione dei dati di testo in PowerShell.

Write-Output "Le autorizzazioni sono state modificate con successo."

**Variabili automatiche:**
In PowerShell sono presenti diverse variabili automatiche predefinite e gestite da PowerShell stesso. Queste variabili forniscono informazioni su vari aspetti dell'ambiente PowerShell e della sessione corrente. Ecco alcune variabili automatiche comuni in PowerShell:

$PSVersionTable: contiene informazioni sulla versione di PowerShell in uso.

$Host: rappresenta l'applicazione host PowerShell corrente.

$PSCmdlet: rappresenta il cmdlet attualmente in esecuzione in uno script o in una funzione.

$MyInvocation: contiene informazioni sullo script o sul comando corrente.

$PID: contiene l'ID del processo della sessione corrente di PowerShell.

$PWD: rappresenta la directory di lavoro attuale nella sessione corrente di PowerShell.

$HOME - Rappresenta la directory home dell'utente.

$Args: contiene una matrice di argomenti passati a uno script o a una funzione.

$Error: contiene l'oggetto errore più recente.

$True e $False: rappresentano rispettivamente i valori booleani vero e falso.

**Cose in più:**
 
Differenze tra Servizi e Programmi in Windows
 
I servizi Windows sono applicazioni eseguibili di lunga durata eseguite nelle proprie sessioni Windows. Possono essere avviati automaticamente all'avvio del computer, possono essere messi in pausa e riavviati e non mostrano alcuna interfaccia utente. I servizi sono ideali per l'esecuzione di attività in background che non richiedono l'interazione dell'utente, come servizi di rete, attività di manutenzione del sistema e driver di dispositivo. I servizi vengono eseguiti in un contesto di sicurezza separato e possono avere diritti di accesso diversi rispetto all'utente connesso.
 
I programmi installati, invece, sono applicazioni con cui interagisci sul desktop. Hanno un'interfaccia utente e sono progettati per essere utilizzati dagli utenti finali per eseguire attività specifiche, come l'elaborazione di testi, la navigazione web o la riproduzione multimediale. I programmi installati vengono in genere installati eseguendo un programma di installazione che copia i file nel sistema e crea collegamenti e voci di registro. I programmi installati possono essere disinstallati utilizzando il pannello di controllo Programmi e funzionalità o eseguendo il programma di disinstallazione.
 
In sintesi, i servizi Windows sono progettati per essere eseguiti in background senza l'interazione dell'utente, mentre i programmi installati sono progettati per essere utilizzati dagli utenti finali con un'interfaccia utente. I servizi hanno più diritti di accesso e opzioni di sicurezza rispetto ai programmi installati, che in genere sono limitati al contesto dell'utente connesso.

 
Cosa significa "background"?
 
Quando diciamo che un servizio o un programma Windows viene eseguito "in background", significa che sta eseguendo le sue attività senza visualizzare un'interfaccia utente (UI) o richiedere l'interazione diretta dell'utente. In altre parole, il programma o il servizio funziona silenziosamente, dietro le quinte, senza interrompere il flusso di lavoro dell'utente o richiedere la sua attenzione.
Ecco alcune caratteristiche chiave dei processi in background:
1. Nessuna interfaccia utente visibile: i processi in background non visualizzano un'interfaccia utente grafica (GUI) o un'interfaccia della riga di comando (CLI) che richieda l'input dell'utente.
2. Nessuna interazione con l'utente: i processi in background non richiedono input all'utente, né richiedono che l'utente faccia clic su pulsanti, inserisca dati o esegua altre attività interattive.
3. Funzionamento autonomo: i processi in background funzionano in modo indipendente, senza la necessità dell'intervento dell'utente, e possono continuare a essere eseguiti anche quando l'utente non utilizza attivamente il sistema.
4. Basso utilizzo delle risorse di sistema: i processi in background in genere consumano risorse di sistema minime, come CPU, memoria e spazio su disco, per evitare di influire sulle prestazioni del sistema.
5. Funzionamento continuo: i processi in background possono essere eseguiti continuamente, anche quando il sistema è inattivo o in modalità sospensione, per eseguire attività quali sincronizzazione dei dati, backup o manutenzione del sistema.
Da <https://www.blackbox.ai/chat/kqNuenl> 
 
 
 
 
 

