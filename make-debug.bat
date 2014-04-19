SET oldDir=%CD%
cd %appdata%\.minecraft\resourcepacks
SET newDir=%CD%
cd %oldDir%
if not exist %newDir%\MCME-Loth-DEBUG mkdir %newDir%\MCME-Loth-DEBUG
del %newdir%\MCME-Loth-DEBUG\*.* /s /q
xcopy /y/s %oldDir%\src\main\meta\* %newDir%\MCME-Loth-DEBUG
xcopy /y/s %oldDir%\src\main\pack\* %newDir%\MCME-Loth-DEBUG\assets\minecraft
xcopy /y/s %oldDir%\MCME-UI\src\main\pack\*.* %newDir%\MCME-Loth-DEBUG\assets\minecraft /exclude:debug-excludes.txt
xcopy /y/s %oldDir%\MCME-Aural-Experience\src\main\pack\*.* %newDir%\MCME-Loth-DEBUG\assets\minecraft
