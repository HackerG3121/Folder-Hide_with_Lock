@ECHO OFF
title Folder Locker - Secure Your Private Files
color 0A

REM Check if the hidden folder exists
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK

REM Check if Private folder exists
if NOT EXIST Private goto MDPRIVATE

REM Lock the folder
:CONFIRM
echo.
echo ============================================
echo          FOLDER LOCKER UTILITY
echo ============================================
echo.
echo Do you want to LOCK the Private folder? (Y/N)
set/p "choice=> "

REM Convert to uppercase for case-insensitive comparison
if /I "%choice%"=="Y" goto LOCK
if /I "%choice%"=="N" goto END
echo Invalid choice! Please enter Y or N.
goto CONFIRM

:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo.
echo [SUCCESS] Private folder has been locked and hidden!
echo.
pause
goto END

:UNLOCK
echo.
echo ============================================
echo          FOLDER LOCKER UTILITY
echo ============================================
echo.
echo Enter password to UNLOCK the Private folder:
set/p "password=> "

REM Verify password
if NOT "%password%"=="YOUR_PASSWORD" goto FAIL

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo.
echo [SUCCESS] Private folder has been unlocked!
echo.
pause
goto END

:FAIL
echo.
echo [ERROR] Incorrect password! Access denied.
echo.
pause
goto END

:MDPRIVATE
md Private
echo.
echo [INFO] Private folder created successfully!
echo Place your files in the 'Private' folder and run this script again to lock it.
echo.
pause
goto END

:END
exit
