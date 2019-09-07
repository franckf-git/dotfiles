### [Firefox](https://www.mozilla.org/fr/firefox/all/)

- [Dark Mode](https://addons.mozilla.org/fr/firefox/addon/dark-mode-webextension)
- [uBlock Origin](https://addons.mozilla.org/fr/firefox/addon/ublock-origin)
- [uMatrix](https://addons.mozilla.org/en-US/firefox/addon/umatrix/)
- [Vimium](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/?src=search)
- [DownThemAll](https://addons.mozilla.org/fr/firefox/addon/downthemall/)

> about:config

    privacy.firstparty.isolate=true
    privacy.resistFingerprinting=true
    webgl.disabled=true
    browser.display.use_document_fonts=0
    media.peerconnection.enabled=false

    - geo.enabled = false
    (désactive la géolocalisation)
    - browser.cache.disk.enable = false
    (désactive le cache disk)
    - browser.cache.disk.capacity = 0
    (interdit le cache disk)
    - browser.cache.memory.enable = true
    (active le cache de la ram, accélère Mozilla)
    - browser.cache.memory.capacity ou browser.cache.memory.max_entry_size = 20000 (Ram pour le cache)
    - browser.cache.offline.enable = false
    (Désactive le cache offline)
    - browser.cache.offline.capacity = 0
    (interdit le cache offline)
    - network.http.sendRefererHeader = 0
    (n'informe pas le site de vos ancien site visité)
    - network.prefetch-next = false
    (Ne stock rien dans le cache)
    - browser.sessionhistory.max_entries = 5
    (Nombre de pages pour revenir en arrière sur le même onglet)
    - browser.display.use_document_fonts = 0
    (Ne pas utiliser les polices du pays)
    - privacy.trackingprotection.enabled  =  true
    (activer la protection contre le pistage)
    - extensions.getAddons.cache.enabled  =  false
    (ne pas autoriser les add-ons a utiliser le cache)
    - network.dns.disableIPv6  =  True
    (accélère la connexion)
    - browser.tabs.closeWindowWithLastTab  =  false
    (Ne pas fermer Firefox à la fermeture du dernier onglet, si vous trouvez cela pratique)
    - network.manage-offline-status  =  false
    (Empêcher la mise hors connexion en cas de coupure réseau)
    - browser.urlbar.maxRichResults = 0
    (Désactiver la barre intelligente)
    - browser.urlbar.matchOnlyTyped = true
    (plus là?)
    - xpinstall.signatures.required  = False
    (pour accepter les extensions non signées)
    - xpinstall.whitelist.required  =  False
    (pour ne pas utiliser la liste blanche)
    - extensions.legacy.enabled = true
    (si l'on veut faire fonctionner des anciens add-ons qui n'ont pas encore évolué vers le format WebExtensions)
    - extensions.pocket.enabled  = false
    (la fonctionnalité 'Pocket' qui sert à ... bah à rien en fait, ça semble faire la même chose que les marque-pages)
    - media.peerconnection.enabled = false
    (désactive WebRTC Web Real-Time Communication qui permet le partage vocal, vidéo et P2P via votre navigateur, cette fonctionnalité peut également révéler votre adresse IP réelle via les requêtes STUN du navigateur, même si vous utilisez un service VPN)
    - privacy.resistFingerprinting = true
    (rendre Firefox plus résistant aux empreintes digitales des navigateurs)
    - privacy.firstparty.isolate = true
    (isoler les cookies dans le premier domaine de la partie, ce qui empêche le suivi sur plusieurs domaines mais fait aussi beaucoup plus)
    - media.navigator.enabled = false
    (empêchera les sites Web de suivre l'état du microphone et de la caméra de votre appareil)
    - webgl.disabled = true
    (WebGL représente un risque de sécurité potentiel. C'est pourquoi il est préférable de le désactiver, de plus il peut être utilisé pour identifier votre appareil par des empreintes digitales)