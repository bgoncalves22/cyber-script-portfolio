@ECHO OFF
REM You need to off the echo to use REM and :: as a note.
cd C:\Users\student\Desktop

REM make sure save the file under the Regex folder
REM CYGR502_Regex_CMD_lastname
REM to run using the path under the Regex folder

REM If you want to add notes in the same line add &
mkdir regex & REM You can change the name of the directory
move C:\Users\student\Downloads\animals.txt  C:\Users\student\Desktop\Regex
move C:\Users\student\Downloads\codes.txt  C:\Users\student\Desktop\Regex
move C:\Users\student\Downloads\jokes.txt  C:\Users\student\Desktop\Regex
dir C:\Users\student\Desktop\Regex

type C:\Users\student\Desktop\regex\animals.txt
type C:\Users\student\Desktop\regex\codes.txt
type C:\Users\student\Desktop\regex\jokes.txt
dir C:\Users\student\Desktop\Regex
cd C:\Users\student\Desktop\Regex
findstr /r "^cat" animals.txt
findstr /r "dog$" animals.txt
findstr /r "cat$" animals.txt
findstr /r "^dog" animals.txt 
findstr /r "\cat\>" animals.txt 

findstr /r "[0-9]" codes.txt
findstr /r "^[abcd]" codes.txt
findstr /r "000$" codes.txt
findstr /r "[0-9][0-9][0-9]$" codes.txt


findstr /r "\<cat\> | \<dog\>" jokes.txt
findstr /r "\(ha\)+" jokes.txt
findstr /r "ing$" jokes.txt
