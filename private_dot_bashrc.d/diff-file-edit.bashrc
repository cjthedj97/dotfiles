
# Function for nano
nano () {
        nano=$(whereis -b nano | cut -d' ' -f2)
    if [ -e "$1" ] && [ $(stat --format="%s" "$1") -le 2500000 ]; then
        exec 3< <(cat "$1")
        "$nano" "$1"
        diff -c <(cat <&3) "$1"
        exec 3<&-
    elif [ $# -eq 0 ]; then
        echo "No filename given, opening a new file with nano"
        "$nano"
    elif [ ! -e "$1" ]; then
        echo "Error: File does not exist"
        $nano $1
    else
        echo "Error: File is larger than 25MB, cannot diff"
        $nano $1
    fi
}

# Function for Vi
vi () {
        vi=$(whereis -b vi | cut -d' ' -f2)  
    if [ -e "$1" ] && [ $(stat --format="%s" "$1") -le 2500000 ]; then
        exec 3< <(cat "$1")
        "$vi" "$1"
        diff -c <(cat <&3) "$1"
        exec 3<&-
    elif [ $# -eq 0 ]; then
        echo "No filename given, opening a new file with vi"
        "$vi"
    elif [ ! -e "$1" ]; then
        echo "Error: File does not exist"
        $vi $1
    else
        echo "Error: File is larger than 25MB, cannot diff"
        $vi $1
    fi
}

# Function for Vim
vim () {
        vim=$(whereis -b vim | cut -d' ' -f2)
    if [ -e "$1" ] && [ $(stat --format="%s" "$1") -le 2500000 ]; then
        exec 3< <(cat "$1")
        "$vim" "$1"
        diff -c <(cat <&3) "$1"
        exec 3<&-
    elif [ $# -eq 0 ]; then
        echo "No filename given, opening a new file with vim"
        "$vim"
    elif [ ! -e "$1" ]; then
        echo "Error: File does not exist"
        $vim $1
    else
        echo "Error: File is larger than 25MB, cannot diff"
        $vim $1
    fi
}
