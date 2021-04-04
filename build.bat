set CPU=AMD64
set TOOLCHAIN=amd64
set FEATURES=HUGE
set GUI=yes
set MBYTE=yes
set NETBEANS=no
set OLE=yes

set DYNAMIC_PYTHON=yes
set PYTHON=C:\dev\python27
set PYTHON_VER=27

set DYNAMIC_PYTHON3=yes
set PYTHON3=C:\dev\python3
set PYTHON3_VER=39

cd src

nmake -f Make_mvc.mak

cd ..

if not exist "..\..\vimc64" mkdir ..\..\vimc64
copy src\*.exe ..\..\vimc64 /y
copy src\xxd\xxd.exe ..\..\vimc64 /y
xcopy runtime ..\..\vimc64 /y /E
