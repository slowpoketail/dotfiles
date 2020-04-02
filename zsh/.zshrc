# PROMPT
autoload -U promptinit
promptinit
prompt slowpoke
bindkey -e


# COMPLETION
autoload -U compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION

# turn on default colors (by setting the empty string)
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
# control matching behavior
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# TODO: find out how grml colors these sections
zstyle ':completion:*' format '[%d]'
zstyle ':completion:*' group-name ''
# if completion.d is empty then this will fail
source $(find $ZDOTDIR/completion.d -type f)


# HISTORY
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
setopt appendhistory
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups

# VCS_INFO
autoload -U vcs_info

function update_vcs_formats () {
    if [ -z "$(git ls-files --other --exclude-standard 2> /dev/null)" ]; then
        zstyle ':vcs_info:git:*' formats "%b%c%u"
    else
        zstyle ':vcs_info:git:*' formats "%b%c%u%F{red}?%f"
    fi
}


zstyle ':vcs_info:*' disable ALL
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:git:*' stagedstr '%F{green}.%f'
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}!%f"

precmd_functions=($precmd_functions update_vcs_formats vcs_info)

# aliases
[[ -f $ZDOTDIR/aliases ]] && source $ZDOTDIR/aliases

# keychain/ssh-agent
eval $(keychain --noask --eval --quiet ~/.ssh/id_rsa)
