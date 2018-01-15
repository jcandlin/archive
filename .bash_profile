source ~/.bash_git

export PATH=$PATH:~/contx/dev_tools/scripts:/Users/jcandlin/connect:~/Documents/SCRIPTS/:~/sandpit:/usr/libexec:/usr/local/bin/:/Users/jcandlin/sandbox/k8s/kubernetes/client/bin:Users/jcandlin/sandbox/rancher
#export DCOS_CONFIG_PATH=etc/config-1.7.yaml

source /Users/jcandlin/mac_bashrc
#source /Users/jcandlin/dcos/dcos/bin/env-setup && dcos help
export JAVA_HOME="$(/usr/libexec/java_home)"

GIT_PS1_SHOWDIRTYSTATE=yes
GIT_PS1_SHOWSTASHSTATE=yes
GIT_PS1_SHOWUNTRACKEDFILES=yes
GIT_PS1_SHOWUPSTREAM=verbose,git
 
PS1='\[\033[01;34m\]\w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\]\$\[\033[00m\] '


eval "$(jenv init -)"

# path to the DCOS CLI binary
#if [[ "$PATH" != *"/Users/jcandlin/dcos/dcos/bin"* ]];
#  then export PATH=$PATH:/Users/jcandlin/dcos/dcos/bin;
#fi

# path to the DCOS CLI binary
#if [[ "$PATH" != *"/Users/jcandlin/dcos/bin"* ]];
#  then export PATH=$PATH:/Users/jcandlin/dcos/bin;
#fi
