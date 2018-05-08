#if [ -f /etc/bashrc ]; then
#  . /etc/bashrc   # --> Read /etc/bashrc, if present.
#fi

export PS1='[\u@\h \W]\A\$ '

# source local specifics
if [ -d ${HOME}/.bashrc.d ]; then
  for file in ${HOME}/.bashrc.d/*.sh; do
    source $file
  done
fi

# local apps and libraries (~/opt)
export PATH=${HOME}/opt/bin:$PATH
export MANPATH=${HOME}/opt/share/man:$MANPATH
export PYTHONPATH=${HOME}/opt/lib64/python2.6/site-packages/:$PYTHONPATH
export LANG=en_US
export SVN_EDITOR=vim
unset SSH_ASKPASS

# vim
alias vim_reset='rm -rf ~/.vim; git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim; vim +PluginInstall +qall'
alias vim_update='vim +PluginUpdate +qall'

#system aliases
alias open='xdg-open'
alias rehash='. ~/.bashrc'
alias editrc='vim -p ~/.bashrc'

#screen helpers and aliases
function grabssh()
{
  SSHV="SSH_CLIENT SSH_TTY SSH_AUTH_SOCK SSH_CONNECTION DISPLAY"

  for x in ${SSHV} ; do
    (eval echo $x=\$$x) | sed  's/=/="/
                                s/$/"/
                                s/^/export /'
  done 1>$HOME/opt/bin/fixssh
}
alias attach='grabssh ; screen -d -R'
alias fixssh='source $HOME/opt/bin/fixssh'
alias ssh='fixssh; ssh'

#history hacks
function history {
  if [ $# -eq 0 ]; then builtin history
  else builtin history | grep $@
  fi
}
alias pgrep="ps aux | grep "
alias less="less -R"

#dev utils
function build {
  date=`date +%Y%m%d%H%M%S`
  logfile=make_$1_${date}.log
  shift
  if [ $# -ne 0 ]; then 
    reset; (echo "make " $@; make $@ )|& tee $logfile
    echo "========================================="
    echo " errors:"
    grep ^#error $logfile
    echo "========================================="
    echo " failures:"
    grep ^#fail $logfile

    echo "log written to: "${logfile}
  fi
}

