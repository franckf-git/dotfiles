# chiffrement de dossier par ecryptfs

mkdir .DOSSIER DOSSIER .ecryptfs
touch .ecryptfs/DOSSIER.conf .ecryptfs/DOSSIER.sig
echo "/CHEMINCOMPLET/.DOSSIER /CHEMINCOMPLET/DOSSIER ecryptfs" > .ecryptfs/DOSSIER.conf
ecryptfs-add-passphrase
echo [sig] > .ecryptfs/DOSSIER.sig

mount.ecryptfs_private DOSSIER

> alimenter le dossier

umount.ecryptfs_private DOSSIER

ecryptfs-add-passphrase
mount.ecryptfs_private DOSSIER
