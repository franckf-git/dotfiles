# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#export PS1="\n \A \w\n "
export PS1="> "
alias ll="ls -lash"
alias newsboat="newsboat 2>> /dev/null"
alias upg="rpm-ostree upgrade && flatpak update -y"
alias vi="nvim -p"
alias ydl="nice -n 16 yt-dlp --write-auto-sub --add-metadata -ic"
alias aydl="yt-dlp --extract-audio -f bestaudio/best"
alias fullgit="git add --all && git commit -v -a && git push && git push --tags"
