## Browser Extensions

### [Chromium](https://www.chromium.org/developers/how-tos/get-the-code)

- [Duckduckgo](https://duckduckgo.com/)
- [Dark Reader](https://chrome.google.com/webstore/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)
- [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=fr)
- [uMatrix](https://chrome.google.com/webstore/detail/umatrix/ogfcmafjalglgifnmanfmnieipoejdcf?hl=fr)
- [Dark Theme](https://chrome.google.com/webstore/detail/material-simple-dark-grey/ookepigabmicjpgfnmncjiplegcacdbm)
- [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en-US)

### [Firefox](https://www.mozilla.org/fr/firefox/all/)

- [Dark Reader](https://addons.mozilla.org/fr/firefox/addon/darkreader/)
- [uBlock Origin](https://addons.mozilla.org/fr/firefox/addon/ublock-origin)
- [uMatrix](https://addons.mozilla.org/en-US/firefox/addon/umatrix/)
- [Vimium](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/?src=search)

## [VScodium ](https://github.com/VSCodium/vscodium) Extensions

```bash
flatpak install flathub com.vscodium.codium
flatpak install flathub org.freedesktop.Sdk.Extension.golang org.freedesktop.Sdk.Extension.node14

# as root
echo "fs.inotify.max_user_watches = 524288" >> /etc/sysctl.conf
sysctl -p
```

```bash
flatpak run com.vscodium.codium --install-extension coenraads.bracket-pair-colorizer-2
flatpak run com.vscodium.codium --install-extension dbaeumer.vscode-eslint
flatpak run com.vscodium.codium --install-extension esbenp.prettier-vscode
flatpak run com.vscodium.codium --install-extension golang.go
flatpak run com.vscodium.codium --install-extension ritwickdey.liveserver
flatpak run com.vscodium.codium --install-extension vscode-icons-team.vscode-icons
flatpak run com.vscodium.codium --install-extension vscodevim.vim

# visualstudioexptteam.vscodeintellicode # pas dans vscodium mais utile seulement pour py, JS et TS
# potentials (js/ts only)
chenxsan.vscode-standardjs
digitalbrainstem.javascript-ejs-support
ecmel.vscode-html-css
jakob101.relativepath
luongnd.edge
ms-vscode.vscode-typescript-tslint-plugin
streetsidesoftware.code-spell-checker
vincaslt.highlight-matching-tag
wallabyjs.quokka-vscode
xabikos.javascriptsnippets
```

settings.json
```json
{
    "files.autoSave": "onFocusChange",
    "editor.renderWhitespace": "boundary",
    "editor.wordWrap": "on",
    "window.menuBarVisibility": "toggle",
    "editor.mouseWheelZoom": true,
    "editor.multiCursorModifier": "ctrlCmd",
    "editor.tabCompletion": "on",
    "editor.renderControlCharacters": true,
    "workbench.editor.showIcons": false,
    "workbench.activityBar.visible": false,
    "workbench.colorTheme": "Solarized Light",
    "html.format.endWithNewline": true,
    "html.format.indentHandlebars": true,
    "html.format.indentInnerHtml": true,
    "explorer.confirmDelete": false,
    "editor.suggestSelection": "first",
    "workbench.iconTheme": "vscode-icons",
    "files.watcherExclude": {
        "**/.git/objects/**": true,
        "**/.git/subtree-cache/**": true,
        "**/node_modules/*/**": true
    },
    "explorer.confirmDragAndDrop": false,
    "html.format.wrapLineLength": 0,
    "update.mode": "none",
    "editor.formatOnSave": true,
    "workbench.startupEditor": "newUntitledFile",
    "editor.fontFamily": "Fira Code",
    "terminal.integrated.fontFamily": "Fira Code",
    "vsicons.dontShowNewVersionMessage": true,
    "editor.fontLigatures": true,
    "window.zoomLevel": 1,
    "editor.lineNumbers": "relative",
    "[html]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "editor.minimap.enabled": false,
    "go.gopath": "~/.go/"
}
```
