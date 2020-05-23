unit GIT_Comandos;
{
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  176|23/05/20|wander              |Criada a unit "GIT_Comandos" contendo o   |
|     |   17:15|GIT_Comandos        |manual passo a passo para versionamento   |
|     |        |                    |com Git e GitHub                          |
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
Para Thailor, usar, em sua máquina deve aplicar em sua máquina:

C:\> cd\SMC
     ------

C:\SMC> cd src
        ------

C:\SMC\src\> git init
             --------

C:\SMC\src\> git remote add origin https://github.com/smcsistemas/Wander.git
             --------------------------------------------------------------
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
