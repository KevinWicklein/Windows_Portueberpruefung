# Definieren Sie eine Funktion, um einen Port zu überprüfen
function Test-Port {
    param(
        [Parameter(Mandatory=$true)]
        [int]
        $Port
    )

    $connection = Test-NetConnection -ComputerName localhost -Port $Port -WarningAction SilentlyContinue

    # Erstellen Sie ein benutzerdefiniertes Objekt für die Ausgabe
    $output = New-Object PSObject
    $output | Add-Member -MemberType NoteProperty -Name "Port" -Value $Port

    if ($connection.TcpTestSucceeded) {
        $output | Add-Member -MemberType NoteProperty -Name "Status" -Value "Offen"
    } else {
        $output | Add-Member -MemberType NoteProperty -Name "Status" -Value "Geschlossen"
    }

    return $output
}

# Definieren Sie die spezifischen Ports und den Portbereich
$specificPorts = @(443, 80, 8080, 5900, 1397, 5000, 5938)
$portRange = 1..65535

# Erstellen Sie eine leere Liste für die Ergebnisse
$results = @()

# Fragen Sie den Benutzer, welche Ports überprüft werden sollen
$choice = Read-Host "Möchten Sie spezifische Ports (1) oder den gesamten Portbereich (2) überprüfen? Geben Sie 1 oder 2 ein"

if ($choice -eq 1) {
    # Überprüfen Sie jeden spezifischen Port
    foreach ($port in $specificPorts) {
        $results += Test-Port -Port $port
    }
} elseif ($choice -eq 2) {
    # Überprüfen Sie jeden Port im Bereich
    foreach ($port in $portRange) {
        $results += Test-Port -Port $port
    }
} else {
    Write-Output "Ungültige Auswahl. Bitte geben Sie 1 oder 2 ein."
}

# Geben Sie die Ergebnisse in einer Tabelle aus
$results | Format-Table -AutoSize

# Fügen Sie eine Pause am Ende des Skripts hinzu, um das Fenster geöffnet zu halten
Write-Output "Drücken Sie eine beliebige Taste, um fortzufahren..."
$null = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
