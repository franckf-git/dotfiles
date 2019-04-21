# chiffrement de fichier

apt install gnupg2
gpg2 --full-gen-key
gpg2 --list-keys
gpg2 --encrypt FICHIER
gpg2 --output FICHIER --decrypt FICHIER.gpg
