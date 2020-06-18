codium --install-extension chenxsan.vscode-standardjs
codium --install-extension coenraads.bracket-pair-colorizer-2
codium --install-extension digitalbrainstem.javascript-ejs-support
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension visualstudioexptteam.vscodeintellicode
codium --install-extension vscode-icons-team.vscode-icons
codium --install-extension xabikos.javascriptsnippets
codium --install-extension ecmel.vscode-html-css

echo "fs.inotify.max_user_watches = 524288" >> /etc/sysctl.conf
sysctl -p
