@ECHO OFF

:: Crée les variables d'environnement locales au projet selon la machine
IF "%COMPUTERNAME%"	== "CALMONT" (

:: Affecte les variables d'environnement pour les bibliothèques tierces
SET OPENCV=D:\Local\OpenCV\4.7.0-all\build

GOTO :start
) 

IF "%COMPUTERNAME%"	== "DURENQUE" (

:: Affecte les variables d'environnement pour les bibliothèques tierces
SET OPENCV=D:\Local\OpenCV\4.7.0-all\build

GOTO :start
)

ECHO COMPUTERNAME unknown
GOTO :eof

:: Lance le projet
:start
SET VS143COMNTOOLS=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\
START "%VS143COMNTOOLS%\..\IDE\devenv.exe" Bin.sln

:eof
