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
        gpg --verify db db.asc
        if [ gpg --verify db db.asc != true ]; then
            echo "Something's little weird about this repo. But still, do you want to add it? [Y/n]"
            read answer
        if [ $answer = y ]; then
            echo "Adding $1 to the system"
            echo "$1: $2" >> /etc/slavin.repos
        else
            exit 1
    else
      clue
    fi
}
export fetch