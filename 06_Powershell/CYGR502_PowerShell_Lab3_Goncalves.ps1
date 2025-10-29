#Set your Directory
PS C:\Users\student> cd "C:\Users\student\Desktop\PowerShell_Lab"
#List Recently Modified Files
PS C:\Users\student\Desktop\PowerShell_Lab> Get-childitem -path "C:\Users\student\Desktop\PowerShell_lab"  -recurse -file -force | Where-Object { $_.LastWriteTime -gt (Get-Date).AddDays(-15) }
#Export the findings
PS C:\Users\student\Desktop\PowerShell_Lab> Get-childitem -path "C:\Users\student\Desktop\PowerShell_lab"  -recurse -file -force | Where-Object { $_.LastWriteTime -gt (Get-Date).AddDays(-15) } | Export-Csv -path "C:\Users\student\Desktop\PowerShell_Lab\Output\modified_files.csv"
#Inspect Suspicious file
PS C:\Users\student\Desktop\PowerShell_Lab> Get-content -path "C:\Users\student\Desktop\PowerShell_Lab\Downloads\suspicious_link.url"
#Analyze Security Log
PS C:\Users\student\Desktop\PowerShell_Lab> Get-content -path "C:\Users\student\Desktop\PowerShell_Lab\Logs\Security_Sample.evtx"
#Temporary Files
PS C:\Users\student\Desktop\PowerShell_Lab> Get-childitem -path "C:\Users\student\Desktop\PowerShell_lab\Temps"  -recurse -file -force | Where-Object { $_.LastWriteTime -gt (Get-Date).AddHours(-576) }
#Compare Policy Files
PS C:\Users\student\Desktop\PowerShell_Lab> Compare-object (Get-Content "C:\Users\student\Desktop\PowerShell_lab\Backup\policy_backup.docx") (Get-Content "C:\Users\student\Desktop\PowerShell_Lab\Documents\policy.docx")
#Map Network Connections
PS C:\Users\student\Desktop\PowerShell_Lab> Import-csv "C:\Users\student\Desktop\NetworkConnections.csv" | Where-Object { $_.ProcessName -eq "setup.exe" }
#Build a File Timeline
PS C:\Users\student\Desktop\PowerShell_Lab> get-childitem -path "C:\Users\student\Desktop\PowerShell_lab" -file -recurse | Sort-Object { $_.LastWriteTime}
#Export Evidence Logs
PS C:\Users\student\Desktop\PowerShell_Lab> wevtutil epl Security "C:\Users\student\Downloads\PowerShell_Lab\Logs\Security_Copy.evtx" /ow:true
