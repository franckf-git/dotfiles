# proxmox retirer le popup

vi /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
if (data.status == 'Active') {
