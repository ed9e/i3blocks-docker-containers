#!/bin/bash
FILE_TMP="/tmp/.services"
INTERVAL=25
LIST=""
if [[ ! -f $FILE_TMP ]] ||  (( `date +%s` - `stat -c %Y $FILE_TMP` > $INTERVAL )); then
    all=$(rancher ps -a  | grep "ebo/"  | awk '{print $3}' | awk -F '/' '{print $2}' | sort)
    active=$(rancher ps  | grep "ebo/"  | awk '{print $3}' | awk -F '/' '{print $2}')
    for item in $all; do [[ $active =~ (^|[[:space:]])$item($|[[:space:]]) ]] &&  LIST="${LIST}<span color='#EE37B8'>$item</span>\n" || LIST="${LIST}$item\n"; done;

    echo -e $LIST > $FILE_TMP
fi
cat $FILE_TMP
