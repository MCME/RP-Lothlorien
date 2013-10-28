SET oldDir=%CD%
cd %appdata%\.minecraft\resourcepacks
SET newDir=%CD%
cd %oldDir%
if not exist %newDir%\Loth-DEBUG mkdir %newDir%\Loth-DEBUG
del %newdir%\Eriador-DEBUG\*.* /s /q
xcopy /y/s %oldDir%\src\main\meta\* %newDir%\Loth-DEBUG
xcopy /y/s %oldDir%\src\main\pack\* %newDir%\Loth-DEBUG\assets\minecraft
xcopy /y/s %oldDir%\MCME-UI\src\main\pack\*.* %newDir%\Loth-DEBUG\assets\minecraft /exclude:debug-excludes.txt
pause
