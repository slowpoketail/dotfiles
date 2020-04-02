if [ -z ${TMUX+x} ]; then
	tmux new-session -As $(basename $TTY) && logout
fi
if [ -n ${TMUX} ]; then
    # This is an ugly hack to fix stupid behavior of tmux. Since tmux always
    # runs as a login shell, it will source /etc/profile after .zshenv, which
    # means, amongst other things, it will overwrite the custom $PATH set in
    # there.
    source $ZDOTDIR/.zshenv
fi
