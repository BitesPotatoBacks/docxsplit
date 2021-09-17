#!/bin/sh
# Coded with ❤️ by BitesPotatoBacks

TIMESTAMP=`date +%y%m%d%H%M`

echo ""

MAIN() {
    echo "Input your file name\033[0;35m without\033[0m it's extension:\t"
    read -p "Spaces are permitted: " NAME

    if [ "$NAME" == "quit" ]
    then
        exit
    else
        BINARYCODE=`echo "${NAME}" | perl -lpe '$_=unpack"B*"'`
        rm -f ${BINARYCODE}.zip

        chmod u=rw,g=rw,o=r "${NAME}".docx

        cp "${NAME}".docx ${BINARYCODE}.docx
        mv ${BINARYCODE}.docx ${BINARYCODE}.zip

        unzip -qq ${BINARYCODE}.zip -d "${NAME}"-${TIMESTAMP}
        rm ${BINARYCODE}.zip

        sleep 1s && echo ""
        echo "\033[0;32mDone! \033[0m"
        sleep 0.6s && echo ""; exit
    fi
}

if [ ! "$@" ]
then
    MAIN
elif [ "$@" == "help!" ]
then
    echo "\033[0;35mTo split a DOCX\033[0m"
    echo "Run the script stand alone: \033[0;32m./docxsplit.sh\033[0m"

    sleep 0.2s && echo ""

    echo "\033[0;35mTo split a DOCX in another folder\033[0m"
    echo "Run the script along with your folder's path (Contained in quotes)."
    echo 'Spaces in path are permitted: \033[0;32m./docxsplit.sh "Your/Folder/Path/Here"\033[0m'

    sleep 0.2s && echo ""

    echo "Note: You can exit the script by typing 'quit' when prompted for your file name."

    sleep 0.6s && echo ""; exit
else
    cd "$@"
    MAIN
fi
