@echo on

REM Ensure build dir
if not exist build mkdir build
if not exist %PREFIX%\Library\bin mkdir %PREFIX%\Library\bin
cd build

where clang-cl.exe

if errorlevel 1 exit 1

echo Use Clang with Ninja
cmake .. -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=%PREFIX%
ninja
ninja install

if errorlevel 1 exit 1

exit /b 0