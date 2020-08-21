## Browser Extensions

### [Chromium](https://www.chromium.org/developers/how-tos/get-the-code)

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

VSCodium use the OpenVSX marketplace - it is fine but still miss some extensions. [see](https://github.com/VSCodium/vscodium/blob/master/DOCS.md#extensions-marketplace)
To get back to the MS Marketplace edit `/usr/share/codium/resources/app/product.json` and edit gallery :

```json
"extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "itemUrl": "https://marketplace.visualstudio.com/items"
}
```

```bash
codium --install-extension chenxsan.vscode-standardjs
codium --install-extension coenraads.bracket-pair-colorizer-2
codium --install-extension digitalbrainstem.javascript-ejs-support
codium --install-extension visualstudioexptteam.vscodeintellicode
codium --install-extension vscode-icons-team.vscode-icons
codium --install-extension xabikos.javascriptsnippets
codium --install-extension ecmel.vscode-html-css

# as root
echo "fs.inotify.max_user_watches = 524288" >> /etc/sysctl.conf
sysctl -p
```

