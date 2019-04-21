# flatpak

dnf install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak remote-ls REPO --app             # list all availables apps
flatpak remote-ls flathub --app
flatpak search NAME                      # search for a package
flatpak info NAME                        # info on a package
flatpak install REPO NAME                # install an apps from a repo
flatpak install flathub com.valvesoftware.Steam
flatpak run NAME                         # run an apps
flatpak run --unshare=network --nosocket=ssh-auth --nodevice=all --nofilesystem=host --filesystem=home # some security
flatpak run --sandbox NAME               # full security
--socket=x11                             #Show windows using X11
--share=ipc                              #Share IPC namespace with the host
--device=dri                             #OpenGL rendering
--socket=wayland                         #Show windows using Wayland
--socket=pulseaudio                      #Play sounds using PulseAudio
flatpak list                             # list all installed apps
flatpak update NAME                      # update an apps
flatpak uninstall NAME                   # remove an apps
flatpak uninstall --unused               # delete orphans runtines
.local/share/flatpak/                    # configuration de flatpak
.var/app/                                # configuration des apps
