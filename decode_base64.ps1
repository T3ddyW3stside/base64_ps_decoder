#decode base64 file

$base64File = "C:\Users\mbr\Desktop\datei_base64.txt"  # Pfad zur Textdatei mit Base64-Inhalt
$outputExe = "C:\Users\mbr\Desktop\MyTor.exe"  # Pfad für die wiederhergestellte .exe-Datei

# Lies den Base64-Text und konvertiere ihn in die ursprüngliche .exe-Datei zurück
$base64 = Get-Content $base64File -Raw
[IO.File]::WriteAllBytes($outputExe, [Convert]::FromBase64String($base64))

Write-Host "Datei erfolgreich wiederhergestellt: $outputExe"
