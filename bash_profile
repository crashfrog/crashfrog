PS1="\H\[\033[0;31m\]\w\[\033[0m\]>"
touch ~/.bash_aliases
source ~/.bash_aliases
export LSCOLORS="xxGxBxDxCxEgEdxbxgxcxd"
export COPYFILE_DISABLE=true
export PYTHONPATH="$PYTHONPATH:/Users/justin.payne/scripts/:/Users/justin.payne/scripts/dev/python_lib/:/Users/justin.payne/Library/Python/2.7/lib/python/site-packages"


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH



export MARKPATH=$HOME/.marks
function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

alias table="column -t -s $'\t'"

