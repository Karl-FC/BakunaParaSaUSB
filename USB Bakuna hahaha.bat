@echo off
title USB Vaccine + Cleaner - Stable Build + Group Delete - By Karl
color 0a

:: === Detect Removable Drives ===
echo Searching for removable drives...
echo.

setlocal enabledelayedexpansion
set found=0

for /f "tokens=1" %%i in ('wmic logicaldisk where "drivetype=2" get deviceid ^| find ":"') do (
    set drive=%%i
    set /a found+=1
    echo [!found!] OwO USB Drive at %%i
    set drive!found!=%%i
)

if %found%==0 (
    echo No removable USB drives found. sad.
    pause
    exit
)

:: If more than one, choose
if %found% gtr 1 (
    set /p choice=Ako or Siya? jk Pls enter the number of the USB drive na want mo i-vaccinate: 
    set drive=!drive%choice%!
) else (
    set drive=!drive1!
)

echo.
echo Selected Drive: %drive%
echo.

:: Confirm
set /p confirm=Sure ka kay %drive%? (Y/N): 
if /i not %confirm%==Y (
    echo Edi wag.
    pause
    exit
)

:: === Vaccine + Cleaner ===

echo Files are being brought into the light
attrib -h -r -s /s /d %drive%\*.*



:: Confirm
set /p confirm=Delete ba natin sus files among us? (.lnk, .vbs, .inf, .bat, exe, .cmd) (Y/N): 
if /i not %confirm%==Y (
    echo k.
    :: === Vaccine Deployment ===
echo.
echo Spreading the word...
echo Creating autorun.inf folder...
md "%drive%\autorun.inf" 2>nul

echo Locking the autorun.inf folder...
attrib +s +h +r "%drive%\autorun.inf"

echo Writing readme.txt for clout...

> "%drive%\autorun.inf\readme.txt" (
    echo Hi, si Karl to hahaha.
    echo.
    echo Naglagay ako ng fake virus para if incase may virus/malware na magcopy ng autorun.inf sa usb na to, di gagana kasi naunahan ko na HAHAHA.
    echo.
    echo Btw congrats, vaccinated na tong usb na to hahaha🥴
    echo.
    echo Copy mo nalang yun UsbBakuna.txt sa labas ng usb drive at palitan extension niya into .bat, then run it.
	echo.
	echo.
	echo Btw para makapunta sa autorun.inf folder, lagay mo lang yung autorun.inf sa address bar. parang 'E:/autorun.inf' lang
)

type "%~f0" >> "%drive%\autorun.inf\UsbBakuna.txt"
echo.
echo ==== Boom! Bakunado na si %drive% ====
pause
exit
)

echo Pruning them malware...
del /f /a /q %drive%\*.lnk
del /f /a /q %drive%\*.vbs
del /f /a /q %drive%\autorun.inf
del /f /a /q %drive%\*.cmd
del /f /a /q %drive%\*.bat
del /f /a /q %drive%\*.exe

echo.
echo Removing malware stash folders... Kala niya ha
rmdir /s /q %drive%\rootdir
rmdir /s /q "%drive%\System Volume Information"


:: === Vaccine Deployment ===
echo.
echo Spreading the word...
echo Creating autorun.inf folder...
md "%drive%\autorun.inf" 2>nul

echo Locking the autorun.inf folder...
attrib +s +h +r "%drive%\autorun.inf"

echo Writing readme.txt for clout...

> "%drive%\autorun.inf\readme.txt" (
    echo Hi, si Karl to hahaha.
    echo.
    echo Naglagay ako ng fake virus para if incase may virus/malware na magcopy ng autorun.inf sa usb na to, di gagana kasi naunahan ko na HAHAHA.
    echo.
    echo Btw congrats, vaccinated na tong usb na to hahaha🥴
    echo.
    echo Copy mo nalang yun multiplier.txt sa labas ng usb drive at palitan extension niya into .bat, then run it.
	echo.
	echo.
	echo Btw para makapunta sa autorun.inf folder, lagay mo lang yung autorun.inf sa address bar. parang 'E:/autorun.inf' lang
)

type "%~f0" >> "%drive%\autorun.inf\UsbBakuna.txt"

echo.
echo ==== Boom! Bakunado na si %drive% ====

pause
