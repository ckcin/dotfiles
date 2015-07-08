#if [ -f /etc/bashrc ]; then
#  . /etc/bashrc   # --> Read /etc/bashrc, if present.
#fi

export PS1='[\u@\h \W]\A\$ '

export PATH=${HOME}/opt/bin:$PATH
export MANPATH=${HOME}/opt/share/man:$MANPATH
export SVN_EDITOR=vim
export PYTHONPATH=${HOME}/opt/lib/python2.6/site-packages/:$PYTHONPATH
export LANG=en_US
export LESSOPEN="| src-hilite-lesspipe.sh %s"
export LESS=' -R '

alias vim_reset='rm -rf ~/.vim; git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim; vim +PluginInstall +qall'

#system aliases
alias open='gnome-open'
alias rehash='. ~/.bashrc'
alias editrc='vim -p ~/.bashrc'

#history hacks
function history { builtin history -c; builtin history -r; builtin history "$@"; }
PROMPT_COMMAND="builtin history -a; $PROMPT_COMMAND"
alias hist="history | grep "

