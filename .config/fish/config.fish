set fish_greeting ""

### PROMPT ###
# This was the 'sashimi' prompt from oh-my-fish.
function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o 98be65)
  set -l yellow (set_color -o yellow)
  set -g red (set_color -o 98be65)
  set -g blue (set_color -o blue)
  set -l green (set_color -o green)
  set -g normal (set_color magenta)

  set -l ahead (_git_ahead)
  set -g whitespace ' '

  if test $last_status = 0
    set initial_indicator "$green◆"
    set status_indicator "$normal❯$cyan❯$green❯"
  else
    set initial_indicator "$red✖ $last_status"
    set status_indicator "$red❯$red❯$red❯"
  end
  set -l cwd $cyan(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    if test (_git_branch_name) = 'master'
      set -l git_branch (_git_branch_name)
      set git_info "$normal git:($red$git_branch$normal)"
    else
      set -l git_branch (_git_branch_name)
      set git_info "$normal git:($blue$git_branch$normal)"
    end
    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end
  # Notify if a command took more than 5 minutes
  if [ "$CMD_DURATION" -gt 300000 ]
    echo The last command took (math "$CMD_DURATION/1000") seconds.
  end

  echo -n -s $initial_indicator $whitespace $cwd $git_info $whitespace $ahead $status_indicator $whitespace
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

function fish_mode_prompt
  switch $fish_bind_mode
    case default
      set_color --bold red
      echo '(N) '
    case insert
      set_color --bold green
      echo '(I) '
    case replace_one
      set_color --bold green
      echo '(R) '
    case visual
      set_color --bold brmagenta
      echo '(V) '
    case '*'
      set_color --bold red
      echo '(?) '
  end
  set_color normal
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

#DAYDATE=$(date +"%A %d %B")
#CONNECT=$(ip a | grep "state UP" | cut -d":" -f2)
#BATSTATE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | cut -d " " -f20)
#BATPERCENTAGE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | cut -d " " -f15)
#BATTIME=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep time | cut -d " " -f14-15)
#WEATHER=$(cat ~/.weather)
#
#echo "\
# date > $DAYDATE
# web >$CONNECT
# battery > $BATPERCENTAGE $BATSTATE $BATTIME
# weather > $WEATHER \
#"

