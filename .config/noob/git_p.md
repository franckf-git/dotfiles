# git

git init NOM-DU-PROJET                      #Crée un dépôt local
git init --bare                             # creer un depot sur le serveur
git remote -v                               # liste des depots distants
git clone URL                               #Télécharge un projet et son historique
git status                                  #Liste les fichiers modifiés à commiter
git diff                                    #Montre les modifications
git add FICHIER                             #Ajoute un instantané du fichier
git diff --staged                           #Montre les différences de fichier
git reset FICHIER                           #Enleve le fichier de l index
git commit -m "MESSAGE"                     #Enregistre des instantanés de fichiers
git commit -a                               #déposer des modifications sur le dépôt
git branch                                  #Liste toutes les branches locales
git branch -r                               # liste des branches distantes
git branch NOM-DE-BRANCHE                   #Crée une nouvelle branche
git checkout NOM-DE-BRANCHE                 #Bascule sur la branche et met à jour
git checkout -b BRANCH                      #creer la branch et passer dessus
git merge NOM-DE-BRANCHE                    #Combine la branche courante et spécifiée
git branch -d NOM-DE-BRANCHE                #Supprime la branche spécifiée
git rm FICHIER                              #Supprime le fichier du répertoire
git rm --cached FICHIER                     #Supprime le fichier du système de suivi
git mv FICHIER NOUVEAU-NOM                  #Renomme le fichier
git ls-files --others --ignored --exclude-standard   #Tous les fichiers exclus du suivi
.gitignore                                  #Exclure du suivi (mais contenu sur tous les repos)
.git/info/exclude                           #Exclure du projet (reste en local)
cat ~/.gitconfig                            #Configuration globale
git config --global alias.lp "log --pretty" #Création d alias
git stash                                   #Remiser son travail
git stash apply                             # applique les modifications et revient sur le stash
git stash save MESSAGE                      # remise avec un message
git stash show stash@{0} -p                 # voir les modifications
git stash branch BRANCH                     # creer une branche a partir des modifs
git stash pop                               #Applique une remise et la supprime
git stash list                              #Liste toutes les remises
git stash drop                              #Supprime la remise la plus récente
git log                                     #Montre l historique des versions
git log --follow FICHIER                    #Les actions de renommage, pour le fichier
git log -p FICHIER                          #voir le détail des modifications
git diff 1ere-BRANCHE...2eme-BRANCHE        #Montre les différences de contenu
git show COMMIT                             #Montre les modifications de métadonnées
git reset COMMIT                            #Annule tous les commits après COMMIT
git reset --hard COMMIT                     #Supprime tout l historique après COMMIT
git fetch NOM-DE-DEPOT                      #Récupère tout l historique du dépôt nommé
git merge NOM-DE-DEPOT/BRANCHE              #Fusionne la branche du dépôt
git bisect                                  #mode debug pour traquer un mauvais commit
git push ALIAS BRANCHE                      #Envoie tous les commits vers GitHub
git pull                                    #Récupère tout l historique du dépôt
git repack -a -d; git prune                 #Réempaqueter le dépôt local en un seul
git remote set-url origin git@GITSERVER:USER/REPO.git #remplacer le depot
git tag                                     #Listing the available tags
git tag -a v1.4 -m "my version 1.4"         #Annotated Tags
git tag v1.4-lw                             #Lightweight Tags
git tag -a v1.2 9fceb02                     #tag after commits
git tag -d v1.4-lw                          #Deleting Tags

> installation

sudo apt-get install git
git config --global user.name "Your Name"
git config --global user.email youremail@mailsite.com
git config --global color.ui true
git config --global format.pretty oneline

> utilisation

cd /home/user/GITREPOSITORY
git init
git add README.md
git add .
git commit -m "first commit"
git commit -a -m "MAJ fichier"
git log

> GitHub > Create new > New repository

git remote add origin https://github.com/USER/REPO.git
git push -u origin master
git remote -v
https://github.com/USER/REPO
wget https://raw.githubusercontent.com/USER/REPO/master/FILE.md

> Connecting to GitHub with SSH
> a faire avant de créer le repot

ls -al ~/.ssh
ssh-keygen -t rsa -b 4096 -C "youremail@mailsite.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
clip < ~/.ssh/id_rsa.pub

> GitHub > Settings > SSH and GPG keys > Add SSH key (paste)

ssh -T git@github.com
git clone git@github.com:USER/REPO.git
git remote set-url origin git@github.com:USER/REPO.git

> GitHub Pages > create a new repository named USERNAME.github.io

git clone https://github.com/USERNAME/USERNAME.github.io
cd USERNAME.github.io
echo "Hello World" > index.html
git add --all
git commit -m "Initial commit"
git push -u origin master
> https://USERNAME.github.io
