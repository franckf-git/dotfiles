# ram / swap

sudo swapoff -a && sudo swapon -a    #passer le swap en RAM
sudo fstrim -av                      #trim sdd manuel sans discard
free                                 #utilisation ram / swap
swapoff -a                           #transfert du swap vers la ram
swapon -a                            #reactiver le swap

bleachbit --list
bleachbit --preview firefox.cache
bleachbit --clean firefox.vacuum

> creer un preset $HOME/.config/bleachbit/bleachbit.ini

bleachbit -c --preset
