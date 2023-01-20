## Browser Extensions

### [Chromium](https://www.chromium.org/developers/how-tos/get-the-code)

- [Duckduckgo](https://duckduckgo.com/)
- [Dark Reader](https://chrome.google.com/webstore/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)
- [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=fr)
- [uMatrix](https://chrome.google.com/webstore/detail/umatrix/ogfcmafjalglgifnmanfmnieipoejdcf?hl=fr)
- [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en-US)

### [Firefox](https://www.mozilla.org/fr/firefox/all/)

- [Dark Reader](https://addons.mozilla.org/fr/firefox/addon/darkreader/)
- [uBlock Origin](https://addons.mozilla.org/fr/firefox/addon/ublock-origin)
- [uMatrix](https://addons.mozilla.org/en-US/firefox/addon/umatrix/)
- [Vimium](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/?src=search)

#### Flatpak version - hardware acceleration

```bash
flatpak install org.freedesktop.Platform.GStreamer.gstreamer-vaapi
flatpak install org.freedesktop.Platform.ffmpeg-full
```

`about:config #=> media.ffmpeg.vaapi.enabled=true`

## [VScodium ](https://github.com/VSCodium/vscodium)

### Install

```bash
flatpak install flathub com.vscodium.codium
flatpak install flathub org.freedesktop.Sdk.Extension.golang org.freedesktop.Sdk.Extension.node14

# if a lot a files, aka npm packages, as root
echo "fs.inotify.max_user_watches = 524288" >> /etc/sysctl.conf
sysctl -p
```

### Extensions

```bash
# top
flatpak run com.vscodium.codium --install-extension golang.go
flatpak run com.vscodium.codium --install-extension vscodevim.vim

# basics
flatpak run com.vscodium.codium --install-extension esbenp.prettier-vscode
flatpak run com.vscodium.codium --install-extension vscode-icons-team.vscode-icons
flatpak run com.vscodium.codium --install-extension aaron-bond.better-comments
flatpak run com.vscodium.codium --install-extension humao.rest-client
flatpak run com.vscodium.codium --install-extension GitLab.gitlab-workflow

# html
flatpak run com.vscodium.codium --install-extension ritwickdey.liveserver
flatpak run com.vscodium.codium --install-extension vincaslt.highlight-matching-tag
flatpak run com.vscodium.codium --install-extension ecmel.vscode-html-css
flatpak run com.vscodium.codium --install-extension luongnd.edge

# JS/TS
flatpak run com.vscodium.codium --install-extension dbaeumer.vscode-eslint
flatpak run com.vscodium.codium --install-extension jakob101.relativepath
flatpak run com.vscodium.codium --install-extension chenxsan.vscode-standardjs
flatpak run com.vscodium.codium --install-extension digitalbrainstem.javascript-ejs-support
flatpak run com.vscodium.codium --install-extension ms-vscode.vscode-typescript-tslint-plugin
flatpak run com.vscodium.codium --install-extension wallabyjs.quokka-vscode
flatpak run com.vscodium.codium --install-extension xabikos.javascriptsnippets
# visualstudioexptteam.vscodeintellicode # pas dans vscodium mais utile seulement pour py, JS et TS
```

### settings.json

```json
{
  "editor.acceptSuggestionOnCommitCharacter": false,
  "editor.formatOnSave": true,
  "editor.fontSize": 16,
  "editor.lineHeight": 20,
  "editor.lineNumbers": "relative",
  "editor.linkedEditing": true,
  "editor.minimap.enabled": false,
  "editor.mouseWheelZoom": true,
  "editor.multiCursorModifier": "ctrlCmd",
  "editor.renderControlCharacters": true,
  "editor.renderWhitespace": "boundary",
  "editor.suggest.insertMode": "replace",
  "editor.suggestSelection": "first",
  "editor.tabCompletion": "on",
  "editor.wordWrap": "on",
  "explorer.confirmDelete": false,
  "explorer.confirmDragAndDrop": false,
  "files.autoSave": "onFocusChange",
  "files.defaultLanguage": "markdown",
  "go.testOnSave": true,
  "html.format.endWithNewline": true,
  "html.format.indentHandlebars": true,
  "html.format.indentInnerHtml": true,
  "html.format.wrapLineLength": 0,
  "update.mode": "none",
  "window.menuBarVisibility": "toggle",
  "window.zoomLevel": 1,
  "workbench.activityBar.visible": false,
  "workbench.editor.enablePreview": false,
  "workbench.editor.showIcons": false,
  "workbench.startupEditor": "newUntitledFile",
  "workbench.tree.indent": 12,
  "workbench.tree.renderIndentGuide": "always",
  "files.watcherExclude": {
    "**/.git/objects/**": true,
    "**/.git/subtree-cache/**": true,
    "**/node_modules/*/**": true
  }
}
```

### FlatSeal

Variables: `FLATPAK_ENABLE_SDK_EXT=golang`

### Disable upgrade

```
flatpak mask com.vscodium.codium
```

## [vim-go](https://github.com/fatih/vim-go)

go for nvim:
```
git clone https://github.com/fatih/vim-go.git ~/.local/share/nvim/site/pack/plugins/start/vim-go
```
