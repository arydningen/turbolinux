# Aliases
alias tmuxnew='tmux new -s A10X'
alias lsa='ls -Flash'
alias c='clear'
alias blink="printf '\e[?12h'"
alias blinkbar="printf '\033[6 q' ; printf '\e[?12h'"
alias bb=blinkbar

# Systemctl
alias screstart='sudo systemctl restart'
alias scstatus='sudo systemctl status'
alias scenable='sudo systemctl enable'
alias scstop='sudo systemctl stop'
alias scstart='sudo systemctl start'

# nnn
alias nnn='nnn -CEDHUdei'
alias sudonnn='sudo -E nnn -CEDHUdei'
# no -i (file info)
alias nnn='nnn -CEDHUde'
alias sudonnn='sudo -E nnn -CEDHUde'
# Shows the level when using ! to spawn a terminal in nnn
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"

# SSH
# Start and stop the ssh-agent
alias sshon='eval "$(ssh-agent -s)" > /dev/null'
alias sshoff='eval "$(ssh-agent -k)" > /dev/null'

alias term='export TERM=xterm-256color'

# Adds my keys to agent if present
function sshme(){
  # If my github key is on the system
  if [[ -f ~/.ssh/id_ed25519_github ]]; then
    ssh-add ~/.ssh/id_ed25519_github &> /dev/null 
  fi
  # If the standard key is on the system
  if [[ -f ~/.ssh/id_ed25519 ]]; then
    ssh-add ~/.ssh/id_ed25519 &> /dev/null 
  fi
}

# Git
if command -v git &> /dev/null
then
  git config --global user.name "arydningen"
  git config --global user.email "arydningen@gmail.com"
fi

# Exports
# Select a text editor (nano as last resort)
export EDITOR=nano
# If we have vim then use that
if command -v vim &> /dev/null
then
  export EDITOR=vim
fi
# If we have nvim then use that
if command -v nvim &> /dev/null
then
  export EDITOR=nvim
fi

function alex(){
 PS1="\[\033[1;31m\]\u@\h \[\033[0;34m\]\w\[\033[0;37m\]\$\[\033[0m\] " 
}

cm() {
    local valid_colors=("green" "red" "blue" "white" "yellow" "cyan" "magenta" "black")
    local random_color=${valid_colors[$((RANDOM % ${#valid_colors[@]}))]}
    cmatrix -b -a -s -C "$random_color"
}

# Common directories
function dirme(){
  directories=(
      "$HOME/.ssh"
      "/var/log"
      "/var/log/apache2"
      "/var/log/nginx"
      "/var/log/bind9"
      "/var/log/dhcp"
      "/var/www"
      "/var/lib/docker"
      "/etc/apache2"
      "/etc/nginx"
      "/etc/bind"
      "/etc/dhcp"
      "/mnt/jungelen"
      "/mnt/mercury"
  )

  # Loop through each directory and push to stack if it exists
  for dir in "${directories[@]}"; do
      if [ -d "$dir" ]; then
          pushd -n "$dir" > /dev/null
      fi
  done
}

alias d='dirs -v'

pp() {
  pushd +"$1" > /dev/null
}

alias p='pp'

# Colors for less pager
export LESS_TERMCAP_mb=${red} # enter blinking mode
export LESS_TERMCAP_md=$(printf '\e[01;38;5;75m') # enter double-bright mode
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;38;5;200m') # enter underline mode

# If the host has something special (.tussi)
if [ -f "$HOME/.$(hostname)" ]; then
    source "$HOME/.$(hostname)"
fi

# If Im in tmux
#if { [ "$TMUX" ]; } then
  # PS1="@$HOSTNAME $PS1"
  # PS1="${bgrn}-> ${ylw}\w${wht}\$${clr} "
#fi


# Finds tagged hosts Usage
# function ssh-hosts-tag() {:q
#   sed -n -e "/# $1/,/# / p" ~/.ssh/config
# }

# alias ssh-hosts="grep -P \"^Host ([^*]+)$\" $HOME/.ssh/config | sed 's/Host //'"

