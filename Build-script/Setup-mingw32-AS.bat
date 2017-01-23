REM
REM replace c:\egcs-1.1.2 with whatever your installation root may be.
REM GCC_EXEC_PREFIX is optional, but having it here doesn't hurt.
REM
REM - Compiler settings on this computer -
PATH=%PATH%;C:\TPFAPPS\egcs\bin\egcs\bin
SET GCC_EXEC_PREFIX=c:\TPFAPPS\egcs\lib\gcc-lib\
SET CPATH=C:\TPFAPPS\egcs\i386-mingw32\include\
SET LIBRARY_PATH=C:\TPFAPPS\egcs\i386-mingw32\lib\
REM 
REM ------- Project settings and setup --------
REM --- Move to working directory (compiled output )---
H:
cd \as\GitHub\Ranta\Projekt-ranta\Compiled-output\
REM
REM --- Set the common basic path which is equal for all C-code subdiretories ---
SET MY_C_PATH=H:\as\GitHub\Ranta\Projekt-ranta\Source-Code\
REM --- Set CPATH to all necessary source code directorys ---
SET CPATH=%CPATH%;%MY_C_PATH%Include-common\;%MY_C_PATH%Module-Main\Include-main\;%MY_C_PATH%Module-Tabell\Include-tabell\;%MY_C_PATH%Module-Inmatning\Include-inmatning\;%MY_C_PATH%Module-Kalkylator\Include-kalkylator\



