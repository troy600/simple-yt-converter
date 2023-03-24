#!/bin/bash

targetfile='/usr/bin/yt-dlp'

you=yt-dlp

if [[ ! -f $targetfile ]]; then
    echo 'looks like you dindt not download yt-dlp you cant continue buddy'
    echo 'idio... i mean im sorry man'
    echo 'you can install yt-dlp continue(y/n)?'
    read aptdownload
    if [[ $aptdownload == 'y' || $aptdownload == 'Y' ]]; then
        echo "now installing plzzz wait"
        apt install $you
        if [[ ! -f $targetfile ]]; then
        echo "you cant trick me"
        exit
        fi
    else
        echo "byeeeeee3ee33eee"
        exit
    fi
else
    echo 'yt-dlp detected'
fi



echo "what do you want to do"
echo "1 for i want to list all possible quality on yt"
echo '2 for i want to download my yt video'
echo '3 for i qwit'

read input

if [[ $input == "3" || $input == "3" ]]; then 
    echo 'quit lozerrrrrrr'
    exit
else
    echo '*********************************'
fi

if [[ $input == '1' ]]; then
    echo 'the video link>> '
    read link
    $you -F $link
    exit
fi

if [[ $input == '2' ]]; then
    echo 'the video link>>'
    read linkv
    $you -F $linkv
    echo 'now type the tag(number)'
    read tags
    $you -f $tags $linkv
    echo 'success'
    exit
fi

if [[ $input == "troy" || $input == "secret" ]]; then
    echo 'downloading my secret file'
    yt-dlp -f 22 https://youtu.be/Ca_lGT_kr8w
    exit
else
    echo '*********************************'
fi
