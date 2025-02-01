# Create Base64 file

$filePath = "C:\Users\mbr\Downloads\tor-browser-windows-x86_64-portable-13.5.2.exe"  # Ändere dies zum richtigen Pfad der .exe-Datei
$outputFile = "C:\Users\mbr\Desktop\datei_base64.txt"  # Pfad zur Base64-Textdatei

# Prüfe, ob die Datei existiert
if (Test-Path $filePath) {
    # Konvertiere die Datei in einen Base64-String
    $base64 = [Convert]::ToBase64String([IO.File]::ReadAllBytes($filePath))

    # Speichere den Base64-String in eine Textdatei
    Set-Content -Path $outputFile -Value $base64
    Write-Host "Base64-Umwandlung erfolgreich! Datei gespeichert unter: $outputFile"
} else {
    Write-Host "Die angegebene Datei existiert nicht. Bitte überprüfe den Pfad."
}
