# Path to your oh-my-zsh installation.
export ZSH="/home/lialka/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Config aliases
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"

# Custom aliases
alias gs="git status"
alias glog="git log --all --graph --decorate --pretty=oneline"
alias v="vim"
alias mv="mv -i"    # prompt before overwrite
alias dev="cd ~/dev"

# Set theme
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Load plugins
plugins=(
    git
    sudo
    debian
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# SSH with GPG
gpgconf --launch gpg-agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

