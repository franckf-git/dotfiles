codium --install-extension aaron-bond.better-comments
codium --install-extension amandeepmittal.expressjs
codium --install-extension chenxsan.vscode-standardjs
codium --install-extension christian-kohler.npm-intellisense
codium --install-extension christian-kohler.path-intellisense
codium --install-extension coenraads.bracket-pair-colorizer
codium --install-extension digitalbrainstem.javascript-ejs-support
codium --install-extension dracula-theme.theme-dracula
codium --install-extension eg2.vscode-npm-script
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension hookyqr.beautify
codium --install-extension oderwat.indent-rainbow
codium --install-extension tyriar.sort-lines
codium --install-extension visualstudioexptteam.vscodeintellicode
codium --install-extension vscode-icons-team.vscode-icons
codium --install-extension xabikos.javascriptsnippets
codium --install-extension alexcvzz.vscode-sqlite
codium --install-extension ecmel.vscode-html-css

echo "fs.inotify.max_user_watches = 524288" >> /etc/sysctl.conf
sysctl -p
