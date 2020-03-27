@echo off
mode 1000
color 0f

:startup 
echo                                       LOGIN
echo ---------------------------------------------------------------------------------
echo Welcome User
echo ----------------------------------------------------------------------------------
echo Please wait....
timeout /T 5 /NOBREAK >nul
cls
goto password1


:password1
cls
echo                                  PASSWORD?
echo -------------------------------------------------------------------------------------------                                                                                                                   
echo Enter password
echo -------------------------------------------------------------------------------------------
set /p password=
if %password% equ 12 goto Enter 
cls 
echo Incorrect password. Please try again.
echo      ^<press any key to continue^>
pause>nul 
goto :password1



:Enter
cls
echo -----------------------------------------------------------------------------------
echo What do you want to do?
echo 1.Watch Movie!
echo 2.Shutdown
echo 3.See credits.
echo 4.Open the terminal
echo (You Can Access PowerShell By Typing "Powershell", in terminal)

echo Click One Of The Numbers.
echo -----------------------------------------------------------------------------------

set/p answer=
if %answer% == 1 goto Movie!
if %answer% == 2 goto Shutdown
if %answer% == 3 goto Credits 
if %answer% == 4 goto terminal



:terminal
cls
cmd


:Movie!
telnet towel.blinkenlights.nl

:Shutdown
cls
echo Bye See You Later! System Will Close...
pause
cls
echo System Is Closing
timeout /t /5 /NOBREAK 
exit

:Credits
cls
echo Pyroboi20 for Most of The Programing.
echo Movie by Ascii Text Nation
echo Shadow_Thief for help with programing

echo Thelolfactor101 for help with the programing 
pause
goto Enter








 