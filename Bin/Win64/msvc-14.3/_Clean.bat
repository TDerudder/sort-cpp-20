:: Efface les fichiers g�n�r�s par le projet
DEL /F /Q *.sdff
DEL /F /S *.VC.db
DEL /A:H /F /Q *.suo

:: Efface les r�pertoires g�n�r�s par le projet
SET DIRS=.vs Debug Release 

FOR /R %%R IN (%DIRS%) DO IF EXIST %%R (RD /S /Q "%%R")

