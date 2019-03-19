# check .bashrc, this mostly used for osx
if [ -f ~/.bashrc  ]; then
  source ~/.bashrc
fi

# Added by Grow SDK Installer (2018-07-19 10:27:53.391800)
alias grow="/Users/chenyangzhao/bin/grow"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# uses n instead of nvm. for better performance
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# universal homebrew
brewprefix=$HOME/homebrew
export MANPATH="$brewprefix/share/man:$MANPATH"
export PATH="$brewprefix/bin:$brewprefix/sbin:$PATH"
export LD_LIBRARY_PATH=$brewprefix/lib:$LD_LIBRARY_PATH
unset brewprefix

# golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOROOT/bin:$PATH

# pyenv check
export PATH=$HOME/.pyenv/bin:$PATH
which pyenv > /dev/null && eval "$(pyenv init -)"
# pyenv virtual env
which pyenv-virtualenv-init > /dev/null && eval "$(pyenv virtualenv-init -)";

# auto jumper
if [ -f $HOME/bin/z.sh ]; then
    source $HOME/bin/z.sh
fi

# The next line updates PATH for the Google Cloud SDK.
[ -f '/Users/icyz/google-cloud-sdk/path.zsh.inc' ] && source '/Users/icyz/google-cloud-sdk/path.zsh.inc';

# The next line enables shell command completion for gcloud.
[ -f '/Users/icyz/google-cloud-sdk/completion.zsh.inc' ] && source '/Users/icyz/google-cloud-sdk/completion.zsh.inc'

# fuzzy find
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin/kafka/bin:$HOME/bin/zookeeper/bin:$HOME/.local/bin:$HOME/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/google-cloud-sdk/bin:/usr/local/bin:$HOME/homebrew/opt/gettext/bin:$PATH"
