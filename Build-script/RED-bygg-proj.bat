REM Kompilering till objektfiler
gcc -c %MY_C_PATH%Module-Main\main.c -o %MY_PRJ_PATH%Compiled-output\main.o
gcc -c %MY_C_PATH%Module-Inmatning\inmatnin.c -o %MY_PRJ_PATH%Compiled-output\inmatnin.o
gcc -c %MY_C_PATH%Module-Tabell\tabell.c -o %MY_PRJ_PATH%Compiled-output\tabell.o
gcc -c %MY_C_PATH%Module-Kalkylator\kalkylat.c -o %MY_PRJ_PATH%Compiled-output\kalkylat.o
REM
REM Linking
gcc -o %MY_PRJ_PATH%Compiled-output\ranta.exe 	%MY_PRJ_PATH%Compiled-output\main.o  	%MY_PRJ_PATH%Compiled-output\inmatnin.o 	%MY_PRJ_PATH%Compiled-output\tabell.o 	%MY_PRJ_PATH%Compiled-output\kalkylat.o   

