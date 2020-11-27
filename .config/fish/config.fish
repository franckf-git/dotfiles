
set -l DAYDATE (date +" %A %d %B")
set -l CONNECT (ip a | grep "state UP" | cut -d" " -f2 | sed 's/.$//g')
set -l BATSTATE (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | cut -d " " -f20)
set -l BATPERCENTAGE (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | cut -d " " -f15)
set -l BATTIME (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep time | cut -d " " -f14-15)
set -l WEATHER (cat ~/.weather)
set -g returnline '
'
set fish_greeting $DAYDATE $returnline $CONNECT $returnline $BATPERCENTAGE $BATSTATE $BATTIME $returnline $WEATHER

### PROMPT ###
function fish_prompt
  set -l last_status $status
  set -l cyan   (set_color -o 689d6a)
  set -l yellow (set_color -o d79921)
  set -g red    (set_color -o cc241d)
  set -g blue   (set_color -o 458588)
  set -l green  (set_color -o 98971a)
  set -g normal (set_color -o ebdbb2)

  set -l ahead (_git_ahead)
  set -g whitespace ' '
  set -g returnline '
  '

  if test $last_status = 0
    set initial_indicator "$normal◆"
  else
    set initial_indicator "$red✖"
  end
  set -l time (date "+%H:%M")
  set -l cwd $cyan(prompt_pwd)

  if [ (_git_branch_name) ]
    if test (_git_branch_name) = 'master'
      set -l git_branch (_git_branch_name)
      set git_info "$normal git:($red$git_branch$normal)"
    else
      set -l git_branch (_git_branch_name)
      set git_info "$normal git:($blue$git_branch$normal)"
    end
    if [ (_is_git_dirty) ]
      set -l dirty "$red ✗"
      set git_info "$git_info$dirty"
    end
  end
  # Notify if a command took more than 5 minutes
  if [ "$CMD_DURATION" -gt 300000 ]
    echo The last command took (math "$CMD_DURATION/1000") seconds.
  end

  echo -n -s $initial_indicator $whitespace $time $whitespace $cwd $git_info $whitespace $ahead $status_indicator $whitespace $returnline
end

function _git_ahead
  set -l commits (command git rev-list --left-right '@{upstream}...HEAD' ^/dev/null)
  if [ $status != 0 ]
    return
  end
  set -l behind (count (for arg in $commits; echo $arg; end | grep '^<'))
  set -l ahead  (count (for arg in $commits; echo $arg; end | grep -v '^<'))
  switch "$ahead $behind"
    case ''     # no upstream
    case '0 0'  # equal to upstream
      return
    case '* 0'  # ahead of upstream
      echo "$blue↑$normal_c$ahead$whitespace"
    case '0 *'  # behind upstream
      echo "$red↓$normal_c$behind$whitespace"
    case '*'    # diverged from upstream
      echo "$blue↑$normal$ahead $red↓$normal_c$behind$whitespace"
  end
end

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end
### END OF PROMPT ###

# User specific aliases and functions
alias backup="udisksctl mount -b /dev/sda1 ; gio trash --empty && rsync --recursive --links --perms --times --owner --group --devices --specials --verbose --human-readable --copy-dirlinks --delete-before --stats --ignore-errors --exclude={"Vidéos/",".local/share/containers",".cache/",".var/app/org.gnome.Boxes/",".local/share/gnome-boxes/",".config/Ankama"} /home/$USER /run/media/$USER/BACKUP/"

alias vimdiff='nvim -d'
alias neovim='nvim -p'
alias vim='nvim -p'
alias vi='nvim -p'

alias :q='exit'

alias ydl='youtube-dl --write-auto-sub --add-metadata -ic -f "bestvideo[height<=720]+bestaudio/best[height<=720]"'
alias twitchdl='youtube-dl -ic -f "bestvideo[height<=480]+bestaudio/best[height<=480]"'

alias ll="ls -lash"
alias ddg="web_search duckduckgo"
alias www="w3m https://franckf.gitlab.io/startpage/"

alias upgm="sudo dnf upgrade-minimal --refresh && flatpak update -y"
alias upg="sudo dnf upgrade --refresh && flatpak update -y"

alias usbup="udisksctl mount -b /dev/sda1"
alias usbdown="udisksctl unmount -b /dev/sda1"

alias hdmiclone="xrandr --output HDMI-A-0 --same-as eDP --mode 1920x1080"

alias fullgit="git add --all && git commit -v -a && git push -v"

alias toprod="git checkout master && git merge --no-ff developpement && git push -v && git checkout developpement"

