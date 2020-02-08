# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/michael/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git archlinux github python sudo pip
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='vim'
else
 export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ls='ls --color=auto'
alias setup-wifi='nmtui'
alias enable-wifi='nmcli radio wifi on'
alias disable-wifi='nmcli radio wifi off'
alias reload-zshrc='source ~/.zshrc'
alias reset-sound='alsactl restore'
alias rpi-server='ssh 192.168.1.66'
alias nochains='ssh nochains.club -p 555'
alias min-brightness='sudo tee /sys/class/backlight/intel_backlight/brightness <<< 1'
alias cat='bat'
alias disable-trackpad='xinput --disable "Synaptics TM2749-001"'
alias enable-trackpad='xinput --enable "Synaptics TM2749-001"'
alias reset-trackpad='sudo modprobe -r psmouse; sudo modprobe psmouse'
alias docked='sudo mount /dev/sdb1 /mnt/zorro; xrandr --output eDP1 --auto; xrandr --output DP2-1 --auto --right-of eDP1; xrandr --output DP2-2 --auto --right-of DP2-1'
alias undocked='sudo umount /mnt/zorro/; xrandr --output DP2-2 --off; xrandr --output DP2-1 --off; xrandr --output eDP1 --auto'
alias games='sudo mount /dev/sdb1 /mnt/zorro; xrandr --output DP2-1 --auto; xrandr --output DP2-2 --off; xrandr --output eDP1 --off'
alias work-SOC='cd ~/git/SOC/;pipenv shell'
alias suspend='systemctl suspend'
alias dpt='/home/michael/.local/share/virtualenvs/motd-m453ljxO/bin/python /home/michael/git/motd/dpt.py'
alias wsb='/home/michael/.local/share/virtualenvs/motd-m453ljxO/bin/python /home/michael/git/motd/wsb.py'
alias weather='/home/michael/.local/share/virtualenvs/motd-m453ljxO/bin/python /home/michael/git/motd/weather.py'
alias zorro_run='WINEPREFIX=/mnt/zorro/ /mnt/zorro/drive_c/zorro/Zorro.exe'
alias zorro_cd='cd /mnt/zorro/drive_c/zorro/'
alias bandit='ssh bandit.labs.overthewire.org:2220 -l bandit0'

# random PATH stuff
export PATH="$PATH:/home/michael/.gem/ruby/2.5.0/bin/"
export PATH="$PATH:/home/michael/.local/bin"
export PATH="$PATH:/home/michael/.cargo/bin"

# rogue functions
unfunction work_in_progress

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"