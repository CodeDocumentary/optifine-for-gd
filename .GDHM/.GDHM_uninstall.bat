@echo off
setlocal EnableDelayedExpansion

echo.
echo Uninstalling Geometry Dash Hackermode...
echo ---------------------
echo.
call :copy_loader ".GDHM\tools\backup\pthreadVCE2.dll.bak"
call :delete_gdhm_sub ".GDHM"
call :delete_gdhm_sub "GDHM-resources"
call :delete_gdhm_sub "GDHM-tools"
call :delete_gdhm_sub "GDHM-dll"
call :delete_gdhm_sub "GDHM-mod"
call :delete_gdhm "licenses"
call :delete_gdhm_sub "Geometrize2GD.py"
call :delete_gdhm_sub "msacm32.???"
call :delete_gdhm_sub "tBot.???"
call :delete_gdhm_sub "ToastedMarshmellow.???"
call :delete_gdhm_sub "RoastedMarshmellow.???"
call :delete_gdhm_sub "D3DCompiler_43.???"
call :delete_gdhm_sub "gdrpc.toml"
call :delete_gdhm_sub ".GDHM_Geometrize2GD.???"
call :delete_gdhm_sub "launch_Geometrize2GD.???"
call :delete_gdhm_sub "C:\ProgramData\ToastedMarshmellow\"
call :delete_gdhm_sub "%localappdata%\ToastedMarshmellow\TM_Settings.json"
call :delete_gdhm_sub "%localappdata%\ToastedMarshmellow\TM_Log_*.log"
call :delete_gdhm_sub "%localappdata%\ToastedMarshmellow\TM_GDRPC_Settings.toml"
call :delete_gdhm_sub "%localappdata%\ToastedMarshmellow\gdhm.reg"
call :delete_registry
echo Successfully uninstalled Geometry Dash Hackermode. Press any key to close this window.
echo Thank you for using Geometry Dash Hackermode... (* '-')/"
pause>nul
(goto) 2>nul & del "%~f0" & cmd /c exit /b 10
exit

:delete_gdhm_sub
echo Deleting path %1
echo ---------------------
del /S /F /Q %1
rmdir /S /Q %1
echo.
exit /B

:delete_gdhm
echo Deleting path %1
echo ---------------------
del /F /Q %1
rmdir /Q %1
echo.
exit /B

:copy_loader
if not exist %1 exit /B
del /F /Q pthreadVCE2.dll
del /F /Q pthreadVCE2.dll.bak
del /F /Q pthreadVCE2.tm
del /F /Q pthreadVCE2.tm.bak
del /F /Q pthreadVCE2.bak
echo.
echo Copying file(s)...
echo ---------------------
copy NUL pthreadVCE2.dll
xcopy /y /f %1 "pthreadVCE2.dll"
echo.
exit /B

:delete_registry
echo Cleaning registry %1
echo ---------------------
reg delete HKEY_CLASSES_ROOT\gdhm\ /f
reg delete HKEY_CLASSES_ROOT\gdhm\shell\ /f
reg delete HKEY_CLASSES_ROOT\gdhm\shell\open\ /f
reg delete HKEY_CLASSES_ROOT\gdhm\shell\open\command\ /f
echo.
exit /B
