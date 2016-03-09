ZSH_FOLDER=/.zsh-stuff
POWERLINE_REPO_ROOT=/usr/local/lib/python2.7/site-packages

source ~/.antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle git-flow
antigen bundle command-not-found
antigen bundle tmux
antigen bundle tmuxinator

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# OS specific plugins
case `uname` in
  Darwin)
    CURRENT_OS='OS X'
    ;;
  Linux)
    CURRENT_OS='Linux'
    ;;
esac

if [[ $CURRENT_OS == 'OS X' ]]; then
  antigen bundle brew
  antigen bundle brew-cask
  antigen bundle gem
  antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
# None so far
  if [[ $DISTRO == 'CentOS' ]]; then
    antigen bundle centos
  fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
  antigen bundle cygwin
fi

# Load the theme.
antigen theme AlexAxthelm/antigen-themes themes/alex 

# Tell antigen that you're done.
antigen apply

export EDITOR="vim"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
