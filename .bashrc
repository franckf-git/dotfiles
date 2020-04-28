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

# clean rename
renameclean () {
for i in $(ls)
  do
  mv $i $(echo $i | iconv --from-code=UTF-8 --to-code=ASCII//TRANSLIT)
done

prename 'y/A-Z\ /a-z-/' *
prename 's/\[//g' *
prename 's/[^a-z0-9-.]/-/g' *
prename 's/ajia-no-scantrad-//' *
prename 's/ajia-rs--//' *
prename 's/koneko-scantrad-//g' *
prename 's/mangaqc-franco-//' *
prename 's/mns--//' *
prename 's/mns-ps--//g' *
prename 's/mns-rs--//' *
prename 's/mns-tnt--//' *
prename 's/monster-no-scantrad-//' *
prename 's/rs--//' *
prename 's/ryozanpaku-//g' *
prename 's/schlag--//g' *
prename 's/shp--//g' *
prename 's/shp-//g' *
prename 's/stu--//' *
prename 's/yorokobe--//' *
}

enterpod () {
  podman start $(grep name package.json | cut -d'"' -f4)
  podman exec --user=root --interactive --tty $(grep name package.json | cut -d'"' -f4) /bin/bash
  }
