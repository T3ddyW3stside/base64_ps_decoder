
$filePath = "C:\Users\mbr\Downloads\tor-browser-windows-x86_64-portable-13.5.2.exe"  #Change Path
$outputFile = "C:\Users\mbr\Desktop\datei_base64.txt"  #Change Path

#Check if file exist
if (Test-Path $filePath) {
    # Convert file
    $base64 = [Convert]::ToBase64String([IO.File]::ReadAllBytes($filePath))

    # Save File
    Set-Content -Path $outputFile -Value $base64
    Write-Host "Base64-Umwandlung erfolgreich! Datei gespeichert unter: $outputFile"
} else {
    Write-Host "Die angegebene Datei existiert nicht. Bitte überprüfe den Pfad."
}
