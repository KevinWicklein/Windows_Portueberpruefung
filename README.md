

1. **Öffnen Sie die PowerShell-Konsole als Administrator:**
    - Drücken Sie die **Windows-Taste** auf Ihrer Tastatur oder klicken Sie auf das **Windows-Symbol** in der unteren linken Ecke Ihres Bildschirms.
    - Geben Sie `PowerShell` in die Suchleiste ein.
    - Rechtsklicken Sie auf das Ergebnis `Windows PowerShell` und wählen Sie `Als Administrator ausführen`.

2. **Navigieren Sie zum Verzeichnis, in dem sich Ihr Skript befindet:**
    - Verwenden Sie den `cd` Befehl, um zum Verzeichnis zu navigieren, in dem sich Ihr Skript befindet. Zum Beispiel, wenn Ihr Skript im Verzeichnis `G:\Alles\PowerShell` liegt, geben Sie ein: `cd 'G:\Alles\PowerShell'`.
  
    - Set-Location -Path 'G:\Alles\PowerShell' >> .\Portueberpruefung.ps1

3. **Führen Sie das Skript aus:**
    - Geben Sie den Namen Ihres Skripts ein, vorangestellt von einem Punkt und einem Backslash. Zum Beispiel, wenn Ihr Skript `Portueberpruefung.ps1` heißt, geben Sie ein: `.\Portueberpruefung.ps1`.

Bitte beachten Sie, dass Sie möglicherweise die Ausführungsrichtlinie in PowerShell ändern müssen, um Skripte auszuführen. Sie können dies tun, indem Sie `Set-ExecutionPolicy RemoteSigned` in der PowerShell-Konsole eingeben und bestätigen. Diese Aktion erlaubt die Ausführung von Skripts, die von Ihrem Computer stammen oder von einem vertrauenswürdigen Herausgeber signiert wurden.

Am Ende wird eine Übersichtstabelle angezeigt:

Port Status
---- ------
 443 Geschlossen
  80 Geschlossen
8080 Geschlossen
5900 Geschlossen
1397 Geschlossen
5000 Geschlossen
5938 Geschlossen
