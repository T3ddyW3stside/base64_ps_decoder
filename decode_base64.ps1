#decode base64 file

$base64File = "C:\Users\mbr\Desktop\datei_base64.txt"  # Path to file
$outputExe = "C:\Users\mbr\Desktop\MyTor.exe"  # path for save output

# convert logic
$base64 = Get-Content $base64File -Raw
[IO.File]::WriteAllBytes($outputExe, [Convert]::FromBase64String($base64))

Write-Host "Restored output: $outputExe"
