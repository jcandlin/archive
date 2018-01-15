function gitd
    cd ~/gitrepo/$argv
end

function ldap
    ssh jcandlin@$agrv
end

function whc
    cd ~/contx/$argv
end

function topp
    scp $argv jcandlin@brsuxnpemg02.nonprod.williamhill.plc:/home/jcandlin/
end

function mcd
    mkdir -p $argv
    cd $argv
end

function frompp
    scp $argv jcandlin@brsuxnpemg02.nonprod.williamhill.plc:/home/jcandlin/
end

function gitbump
    gitco develop
    git pull
    gitco master
    git pull
    gitco -
    git-relstart
    git-relfinish
end

set -g -x PATH /usr/local/bin $PATH $HOME /Users/jcandlin/cx/dev_tools/scripts
