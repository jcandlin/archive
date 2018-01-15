source /Users/jcandlin/common.sh
source ~/.tacklebox/tacklebox.fish

set __GIT_PROMPT_DIR ~/gitrepo/bash-git-prompt

set -x VISUAL vim
set -x EDITOR "$VISUAL"


# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
#set tacklebox_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

# Plugins
set tacklebox_plugins docker extract compress

# Modules
set tacklebox_modules virtualfish virtualhooks

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

# Functions
function subl
    open -a "Sublime Text 2.app" $argv
end

function atom
    open -a "Atom.app" $argv
end

function chrome
   open -a "Google Chrome.app" $argv
end

function ldap
    command ssh jcandlin@$agrv
end

function server
    python -m SimpleHTTPServer&
    sleep 1
    open http://localhost:8000
end

# z config
for file in ~/.config/fish/conf.d/*.fish
    source $file
end

function f --description 'Open path in Finder'
    open -a Finder ./
end

set -g -x PATH /usr/local/bin $PATH $HOME /Users/jcandlin/contx/dev_tools/scripts
