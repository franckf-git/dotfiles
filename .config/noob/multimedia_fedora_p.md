# install multimedia fedora

> rip dvd

dnf config-manager --add-repo=https://negativo17.org/repos/fedora-multimedia.repo
dnf -y install ffmpeg HandBrake-{gui,cli}

> lecture dvd

dnf config-manager --add-repo=https://negativo17.org/repos/fedora-multimedia.repo
dnf -y install libdvdcss libdvdread libdvdnav
