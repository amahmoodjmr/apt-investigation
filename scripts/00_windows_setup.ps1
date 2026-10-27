# Run in an ADMIN PowerShell on the Windows lab endpoint (authorized lab only).
# Sysmon
cd $env:USERPROFILE\Downloads
Invoke-WebRequest -Uri https://download.sysinternals.com/files/Sysmon.zip -OutFile Sysmon.zip
Expand-Archive Sysmon.zip -DestinationPath Sysmon -Force
cd Sysmon
.\Sysmon64.exe -accepteula -i sysmonconfig.xml   # config in ../config/sysmonconfig.xml
Get-Service Sysmon64
# Auditing for Event IDs 4624 / 4625 / 5140
auditpol /set /subcategory:"Logon" /success:enable /failure:enable
auditpol /set /subcategory:"File Share" /success:enable /failure:enable
auditpol /get /subcategory:"Logon","File Share"
# Synthetic data only
New-Item -ItemType Directory -Path C:\SensitiveFiles -Force
"CONFIDENTIAL - synthetic lab data - employee list" | Set-Content C:\SensitiveFiles\employees_lab.txt
"CONFIDENTIAL - synthetic lab data - project plan"  | Set-Content C:\SensitiveFiles\project_plan_lab.txt
