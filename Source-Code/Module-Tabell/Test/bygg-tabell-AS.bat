REM Kompilering till objektfiler
gcc -c %MY_C_PATH%Module-Tabell\tabell.c 
gcc -c %MY_C_PATH%Module-CuTest\CuTest.c 
gcc -c Tabell-AllTests.c  
REM
REM Linking
gcc -o AllTestsTabell.exe 	tabell.o  	CuTest.o    Tabell-AllTests.o   

