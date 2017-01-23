REM Kompilering till objektfiler
gcc -c ..\Source-Code\Module-Main\main.c -o ..\..\..\Compiled-output\main.o
gcc -c ..\Source-Code\Module-Inmatning\inmatnin.c -o ..\..\..\Compiled-output\inmatnin.o
gcc -c ..\Source-Code\Module-Tabell\tabell.c -o ..\..\..\Compiled-output\tabell.o
gcc -c ..\Source-Code\Module-Kalkylator\kalkylat.c -o ..\..\..\Compiled-output\kalkylat.o
REM
REM Linking
gcc -o ..\..\..\Compiled-output\ranta.exe ..\..\..\Compiled-output\main.o ..\..\..\Compiled-output\inmatnin.o ..\..\..\Compiled-output\tabell.o ..\..\..\Compiled-output\kalkylat.o   

