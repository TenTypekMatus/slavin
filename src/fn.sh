#!/bin/bash
clue() {
    figlet "Slavin"
    echo "----------------------------------------"
    echo -e "\e[3mAn repo manager for MMLD package manager
    Usage: $0 [name of the repo in quotes] [destination to the repo in quotas]
    If the name of the repo isn't included, then it'll use the url adress of the repo"
}
export clue
fetch() {
    if [ "$0" = "$1" = "$2" ]; 
    then
        wget $2/db.asc
        gpg --verify 
        echo "$1: $2" >> /etc/slavin.repos
    else
      clue
    fi
}
export fetch