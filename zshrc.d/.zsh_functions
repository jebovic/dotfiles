function scr() {
    screen -S jba-$1 -c ~/dotfiles/screen.d/$1
}

function scrx() {
    screen -x jba-$1
}

function mkdirg() {
    mkdir -p "$@" && cd "$@"
}

function mvg() {
    mv $1 $2 && cd $2
}

function bkp() {
    cp -a $1 $1.bkp
    white=$(tput setaf 15)
    cyan=$(tput setaf 37)
    echo "$cyan$1$white has been backed up"
}

function unbkp() {
    mv $1.bkp $1
    white=$(tput setaf 15)
    cyan=$(tput setaf 37)
    echo "$cyan$1$white has been restored"
}

# Usage : replace "string_old" "string_new" /home/users/me/test
# Recursively replace string_old by string_new in given directory and subs
function replace() {
    cyan=$(tput setaf 37)
    green=$(tput setaf 77)
    white=$(tput setaf 15)
    old=$1
    new=$2
    old_esc="$(echo "$old" | sed 's/[^-A-Za-z0-9_]/\\&/g')"
    new_esc="$(echo "$new" | sed 's/[^-A-Za-z0-9_]/\\&/g')"
    echo "Replacing $cyan$old$white by $cyan$new$white in directory $cyan$3$white ..."
    grep -rli "$old" $3 | xargs -i@ sed -i "s/$old_esc/$new_esc/g" @
    echo $green
    echo "Done"
}

# Usage : leading_ws /path/to/file
# Remove all leading whitespaces in the given file(s)
function leading_ws() {
    cyan=$(tput setaf 37)
    white=$(tput setaf 15)
    file=$1
    echo "Removing leading whitespaces in $cyan$file$white"
    sed -e 's/^[ \t]*//' $file >> $file.tmp
    mv $file.tmp $file
}

# Usage : insert_before "pattern" "what_to_add_before_pattern" /path/to/file
# Insert something before the line matching the given pattern
function insert_before() {
    cyan=$(tput setaf 37)
    white=$(tput setaf 15)
    pattern=$1
    to_add=$2
    file=$3
    echo "Inserting $cyan$2$white before $cyan$1$white in $cyan$file$white"
    sed "s/.*$pattern.*/$to_add&/" $file >> $file.tmp
    mv $file.tmp $file
}
