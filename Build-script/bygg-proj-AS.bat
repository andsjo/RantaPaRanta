REM Kompilering till objektfiler
gcc -c ..\Source-Code\Module-Main\main.c
gcc -c ..\Source-Code\Module-Inmatning\inmatnin.c
gcc -c ..\Source-Code\Module-Tabell\tabell.c
gcc -c ..\Source-Code\Module-Kalkylator\kalkylat.c
REM
REM Linking
gcc -o ranta.exe main.o inmatnin.o tabell.o kalkylat.o

