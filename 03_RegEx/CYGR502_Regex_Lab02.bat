cd C:\Users\student\Desktop
mkdir Lab02_Log
move C:\Users\student\Downloads\Lab2_Log_00.txt  C:\Users\student\Desktop\Lab02_Log
dir C:\Users\student\Desktop\Lab02_Log
type C:\Users\student\Desktop\Lab02_Log\Lab2_Log_00.txt
dir C:\Users\student\Desktop\Lab02_Log
cd C:\Users\student\Desktop\Lab02_Log
REM Extract All IPv4 addresses in the file.
findstr /R "[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*" Lab2_Log_00.txt
REM Extract all unique email addresses
findstr /R "[a-zA-Z0-9._%+-][a-zA-Z0-9._%+-]*@[a-zA-Z0-9.-]*\.[a-zA-Z][a-zA-Z]*" Lab2_Log_00.txt
REM Extract all timestamps 
findstr /R "^ [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]" Lab2_Log_00.txt
REM Find all lines with HTTP status 401
findstr /R "\<401\>" Lab2_Log_00.txt
REM There are 13 lines that display HTTP Status 401. 
REM Extract IP's for all "Failed login" events
findstr /R "[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*" Lab2_Log_00.txt findstr /R "Failed Login" Lab2_Log_00.txt 
REM Extract every URL or path that ends in .exe
findstr /R /I "\([a-z]*://\|\\\)[^ ]*\.exe" Lab2_Log_00.txt
REM Show lines that reference .ru and .cn domains.
findstr /R /I "\.ru\. \.ru$ \.cn\. \.cn$" Lab2_Log_00.txt
REM Extract just the domain names ending with .ru or.cn
findstr /I /R /C:"\.ru$" /C:"\.ru[^a-zA-Z0-9]" /C:"\.cn$" /C:"\.cn[^a-zA-Z0-9]" Lab2_Log_00.txt
REM Find lines whose user agent contains curl or Wget.
findstr /I /C:"curl" /C:"wget" Lab2_Log_00.txt
REM Extract just the IP address associated with those requests.
findstr /R /I "[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*" Lab2_Log_00.txt | findstr /I /C:"curl" /C:"wget"
REM From the Logs, extract Windows File Paths ending in .exe.
findstr /R /I "\\[a-zA-Z0-9\\._-]*\.exe" Lab2_Log_00.txt
REM Show any line that mentions password case-insensitive
findstr /I "password" Lab2_Log_00.txt
REM Extract the username on that line
REM User - Erin
findstr /r "401" Lab2_Log_00.txt | findstr /i "user="




























