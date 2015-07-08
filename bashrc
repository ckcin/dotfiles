#if [ -f /etc/bashrc ]; then
#  . /etc/bashrc   # --> Read /etc/bashrc, if present.
#fi

export PS1='[\u@\h \W]\A\$ '

#export PATH=${HOME}/opt/bin:/usr/java/latest/bin:$PATH
export PATH=${HOME}/opt/bin:$PATH
export MANPATH=${HOME}/opt/share/man:$MANPATH
export SVN_EDITOR=vim
#export PYTHONPATH=${HOME}/opt/lib/python2.6/site-packages/:${HOME}/SVN_CommonArea/OTS/rhel6x/gnu/local/Python-2.6.8-x86_64/lib/python2.6/site-packages/:/opt/GOESR/local/lib/python2.6/site-packages/:$PYTHONPATH
export PYTHONPATH=${HOME}/opt/lib/python2.6/site-packages/:$PYTHONPATH
export LANG=en_US
export LESSOPEN="| src-hilite-lesspipe.sh %s"
export LESS=' -R '

# SSH Sessions
function lex(){ while [ 1 ]; do ssh -q -o ConnectTimeout=10 -XY -t $1 screen -DR nickc.$1; sleep 2; done }

alias vim_reset='rm -rf ~/.vim; git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim; vim +PluginInstall +qall'

#local build flags for opt
export C_INCLUDE_PATH=${HOME}/opt/include:$C_INCLUDE_PATH

# project specific
source ~/.bash_goesr

export JAVA_HOME=/usr/java/latest/
export PATH=${JAVA_HOME}/jre/bin:${PATH}

#system aliases
alias open='gnome-open'
alias rehash='. ~/.bashrc'
alias editrc='vim -p ~/.bashrc'

#history hacks
function history { builtin history -c; builtin history -r; builtin history "$@"; }
PROMPT_COMMAND="builtin history -a; $PROMPT_COMMAND"
alias hist="history | grep "

