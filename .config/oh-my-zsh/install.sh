sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv /home/$USER/.oh-my-zsh/ /home/$USER/.config/oh-my-zsh/
git clone https://github.com/zsh-users/zsh-autosuggestions /home/$USER/.config/oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting /home/$USER/.config/oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git /home/$USER/.config/oh-my-zsh/custom/themes/powerlevel9k