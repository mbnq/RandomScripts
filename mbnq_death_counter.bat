title Mbnq's death counter
color 04
@echo off
setlocal enabledelayedexpansion
cls

set /a linelenght=1
set /a count=0
set "fileName=mbnq_dc_output.txt"
set /a dAmount=14400
set /a tAmount=!dAmount!
set dPerson=X
set "spacing= "

echo. > %fileName%
echo ***************************************************************** >> %fileName%
echo. >> %fileName%
echo This text file is meant to make you aware of something important. >> %fileName%
echo Please scroll the file down and pay attention. >> %fileName%
echo This is not a joke. >> %fileName%
echo. >> %fileName%
echo **************************** 2014 ******************************* >> %fileName%

:loop01
if !dAmount! gtr 0 (
    set "line="
    set /a lineLength=!linelenght!
    if !dAmount! lss !linelenght! set /a lineLength=!dAmount!
    for /l %%i in (1,1,!lineLength!) do (
        set "line=!line!!dPerson!!spacing!"
        set /a count+=1
    )
	echo Writing^: !count!^/!tAmount! to !fileName! Please wait.
    echo !line! >> %fileName%
    set /a dAmount-=lineLength
    goto loop01
)

echo. >> %fileName% 
echo **************************** 2024 ******************************* >> %fileName%
echo. >> %fileName% 
echo Each !dPerson! symbol represents a person who lost their life  >> %fileName%
echo during the Russian invasion of Ukraine, on both sides. >> %fileName%
echo Source^: UN >> %fileName%
echo. >> %fileName%
echo https://www.mbnq.pl/ >> %fileName%
echo. >> %fileName%
echo ***************************************************************** >> %fileName%

echo Done!
timeout /t 1 > nul
start !fileName!
endlocal
