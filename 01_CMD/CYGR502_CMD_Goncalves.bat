
rem cd %USERPROFILE%\Desktop  - this is not working, please identify proper userprofile 
rem cd is to change directory 
cd C:\Users\student\Desktop 
rem mkdir is to make a directory
mkdir cmd_lab
cd cmd_lab
rem Ask for help, learn the tool by reading
help dir
dir /?
rem Look around and record what you see
dir
dir > inventory.txt
type inventory.txt
rem Create notes, then read them page by page
echo first note > notes.txt
echo second note >> notes.txt
type notes.txt
type notes.txt | more
rem Copy a box, move a box, change a label
mkdir backup
copy notes.txt backup\notes.txt
mkdir archive
move backup\notes.txt archive\
ren archive\notes.txt notes_renamed.txt
rem Search inside a stack of papers
find /i "second" notes.txt
rem Clean up junk safely
echo temp > junk.tmp
del junk.tmp
rmdir archive
rem Reflection, what did you learn
dir > inventory.txt
echo I learned how to copy and move files >> notes.txt 
echo During the creation of this script, I learned how to correctly run a script using NotePad++ and how sensitive the slash and back slash can make a difference >> notes.txt


