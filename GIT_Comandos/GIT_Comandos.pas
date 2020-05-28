unit GIT_Comandos;
{
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  176|23/05/20|wander              |Criada a unit "GIT_Comandos" contendo o   |
|     |   17:15|GIT_Comandos        |manual passo a passo para versionamento   |
|     |        |                    |com Git e GitHub                          |
================================================================================

Fonte:
https://tableless.com.br/tudo-que-voce-queria-saber-sobre-git-e-github-mas-tinha-vergonha-de-perguntar/

================================================================================

(#1)
No GitHub há o repositorio WANDER

(#2)
WANDER possui 3 branches
       master
       thailor
       wander

(#3)
***** a pastas versionada é C:\SMC\src ****


(#4)
Para Rodrigo, Vitor e Thailor usarem, devem aplicar, em suas respectivas máquinas:

C:\> cd\SMC
     ------

C:\SMC> cd src
        ------

C:\SMC\src\> git init
             --------

C:\SMC\src\> git remote add origin https://github.com/smcsistemas/Wander.git
             ---------------------------------------------------------------
(#5)
Após criar é preciso baixar os branches remotos para a máquina local com o
comando abaixo:

C:\SMC\src\> git pull
             --------

Deve aparecer o seguinte:

From https://github.com/smcsistemas/Wander
 * [new branch]      Thailor    -> origin/Thailor
 * [new branch]      Wander     -> origin/Wander
Already up to date.

(#6)
Thailor deverá trabalhar no seu branch:

C:\SMC\src\> git checkout Thailor
             --------------------

Deve aparecer:
Switched to a new branch 'Thailor'
Branch 'Thailor' set up to track remote branch 'Thailor' from 'origin'.


(#7)
quando Thailor alterar algo no branch dele, deve usar:

C:\SMC\src\> git add .
             ---------

C:\SMC\src\> git commit -m "comentario sem acentos sobre o que alterou"
             ----------------------------------------------------------

C:\SMC\src\> git push
             --------

C:\SMC\src\> git pull
             --------

(#8)
Fim....

Mas... o administrador do GIT vai precisar "juntar os branches" com a seguinte
sequência:

(#09)
Baixar as alteracoes remotas de Thailor para o repositorio local de Thailor

C:\SMC\src\> git checkout Thailor
             --------------------

C:\SMC\src\> git pull
             --------

(#10)
Baixar as alteracoes remotas de Wander para o repositorio local de Wander

C:\SMC\src\> git checkout Wander
             ------------------

C:\SMC\src\> git pull
             --------

(#11)
Mudar para o branch local master

C:\SMC\src\> git checkout master
             -------------------

(#12)
Juntar as alteracoes locais de Thailor com o branch local master

C:\SMC\src\> git merge Thailor
             -----------------

(#13)
Juntar as alteracoes locais de Wander com o branch local master

C:\SMC\src\> git merge Wander
             ----------------

(#14)
Subir o branch local master para o branch remoto master
atualizando a nuvem (GitHub)

C:\SMC\src\> git push
             --------

}
interface

implementation

end.


{
@echo off
ECHO ----------------------------------
REM ECHO WANDER MENDES MARTINS - 08/01/2020 versao 1
ECHO WANDER MENDES MARTINS - 15/05/2020 versao 2
ECHO ----------------------------------
:Variaveis
rem %time:~3,2%
set DATA=%date:~0,2%-%date:~3,2%-%date:~6,10%_
SET /P obsarquivo=[ENTRE COM UMA OBS PARA COMPOR O NOME DO ARQUIVO:]
c:
cd\
ECHO Procurando por alteracoes...
del c:\SMC_WANDER\src\*.*.*~* /s
XCOPY c:\SMC_WANDER\src  D:\SMC_WANDER\src /s /y /d /i
ECHO D:\SMC_WANDER atualizado...
XCOPY c:\SMC_WANDER\src  C:\SMC_GIT\src /s /y /d /i
ECHO C:\SMC_GIT atualizado...
rem XCOPY c:\SMC_WANDER  C:\SMC_GIT /s /y
ECHO .
ECHO Compactando...
ECHO
ECHO ON
copy C:\SMC_WANDER\Win32\Debug\SMC_LIGHT.exe "C:\Users\DEV_SMC\Desktop\RODRIGO TESTAR\"
d:
cd\BACKUP_DEV
set PASTA0=Mes-%date:~3,2%-%date:~6,10%
cd %PASTA0%
set PASTA=%date:~0,2%-%date:~3,2%-%date:~6,10%
md %PASTA%
cd %PASTA%
rem pause
c:
cd\
cd "Program Files\7-Zip\"
7z a -t7z -r D:\BACKUP_DEV\%PASTA0%\%PASTA%\SMC_%DATA%_%obsarquivo%.7z "C:\SMC_WANDER\*"
del  D:\wander_Backup\*.7z
copy D:\BACKUP_DEV\%PASTA0%\%PASTA%\SMC_%DATA%_%obsarquivo%.7z D:\wander_Backup
echo versionando no git branch wander
rem *****************************************
rem *** funcoes do ususario do git/github ***
rem *****************************************
c:
cd\
cd SMC_GIT
cd src
git checkout wander
git status
git add .
git status
rem pause
git commit -m %obsarquivo%
git status
rem pause
rem copiando para wander o q thailor subiu (apos o push do thailor na maq dele)
git pull Thailor
pause
git pull master
pause
git push
rem ************************************
rem *** funcoes do adm do git/github ***
rem ************************************
git checkout master
git merge wander
rem thailor ja esta atulizado em wander
rem git merge Thailor
rem git push
rem git pull
rem git checkout Thailor
rem git merge wander
rem thailor ja esta atulizado em wander
rem git merge Thailor
git push
rem git pull
echo versionando no git WANDER
rem C:\Wander\ZIP_BACKUP_Wander.bat %obsarquivo%
pause
exit

}
