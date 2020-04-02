source /etc/zsh/zprofile

# general options
PATH=$HOME/bin:$PATH:$HOME/.local/bin
BROWSER=/usr/bin/firefox

# mail options
MAIL=""
mailpath=("~/mail/new?you have mail")
MAILCHECK=60

# python (virtualenv)
WORKON_HOME=$HOME/.virtualenvs
PROJECT_HOME=$HOME/coding/python
VIRTUAL_ENV_DISABLE_PROMPT=1
#source /usr/bin/virtualenvwrapper.sh

# lua
#VERT_DISABLE_PROMPT=1
#eval $(luarocks path --bin)
#source $(which vert_wrapper)

# go
GOPATH=~/coding/go

# prompt settings
fpath=($ZDOTDIR/prompt $fpath)
setopt PROMPT_SUBST

#PAGER=most

# scheme
#CHICKEN_REPOSITORY="~/programming/scheme/chicken"
