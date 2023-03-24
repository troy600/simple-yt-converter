#!/usr/bin/bash

manclip=youtu.be

targetfile='/usr/bin/yt-dlp'


printf 'working directory(location) else click enter: '
read dir
if [[ $dir == "" ]] then
    echo no 'directory pickedd using default!!'
    sleep 2
else
    cd $dir/
fi

you=yt-dlp

red='\033[0;31m'
nc='\033[0m'


printf "**"
printf "*****"
printf "********"
printf "*****"
printf "**"



if [[ ! -f $targetfile ]]; then
    printf "${red}looks like you dindt not download yt-dlp you cant continue buddy \n"
    printf "${nc}you idio... i mean im sorry man"
    echo 'you can install yt-dlp continue(y/n)?'
    read aptdownload
    if [[ $aptdownload == 'y' || $aptdownload == 'Y' ]]; then
        echo "now installing plzzz wait"
        apt install $you
        if [[ ! -f $targetfile ]]; then
            echo "last chance do ya want to really install it?(y/n)"
            read 69
            if [[ $69 == 'n' || $69 == 'N' ]]; then
                printf "${red}thats it idiot homelezz man"
                exit
            else
                printf "${nc} nize"
                sudo apt install $you
                exit
            fi
        else
            echo "byeeeeee3ee33eee"
            exit
        fi
    else
        exit
    fi
else
    printf "yt-dlp detected"
fi

echo '***********************'
echo '**** *****       ******'
echo '**** ***** ************'
echo '**** ***** ************'
echo '****             ******'
echo '********** ***** ******'
echo '********** ***** ******'
echo '****       ***** ******'
echo '***********************'


echo "what do you want to do"
echo "1 for i want to list all possible quality on yt"
echo '2 for i want to download my yt video'
echo '3 for i qwit'
printf 'kindly put the method>>'

read input

if [[ $input == "3" || $input == "3" ]]; then 
    echo 'quit lozerrrrrrr'
    exit
fi

if [[ $input == '1' ]]; then
    printf 'the video link>> '
    read link
    $you -F $link
    exit
fi

if [[ $input == '2' ]]; then
    printf 'the video link>>'
    read linkv
    $you -F $linkv
    printf 'now type the tag(number)'
    read tags
    $you -f $tags $linkv
    echo 'success'
    exit
fi

if [[ $input == "troy" || $input == "secret" ]]; then
    echo 'downloading my secret file'
    yt-dlp -f 22 'https://'$manclip'/Ca_lGT_kr8w'
    exit
fi
exit
