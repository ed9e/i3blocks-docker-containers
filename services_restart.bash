#!/bin/bash
FILE_TMP="/tmp/.services"
rm $FILE_TMP
echo $1;
echo $2;

case $2 in
    1)
        rancher start "ebo/"$1
        ;;
    2)
        rancher stop "ebo/"$1
        ;;
    3)
        rancher restart "ebo/"$1
        ;;
esac
