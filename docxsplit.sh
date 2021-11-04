#!/bin/sh

TIMESTAMP=`date +%y%m%d%H%M%s`

echo ""

MAIN() {
    echo "Enter the name of your .docx excluding it's extension, or hit Control+C to exit\t"
    read -p "(spaces are permitted): " NAME
    
    if [ -e "$NAME.docx" ]
    then
        BINARYCODE=`echo "${NAME}" | perl -lpe '$_=unpack"B*"'`
        rm -f ${BINARYCODE}.zip

        chmod u=rw,g=rw,o=r "${NAME}".docx

        cp "${NAME}".docx ${BINARYCODE}.docx
        mv ${BINARYCODE}.docx ${BINARYCODE}.zip

        unzip -qq ${BINARYCODE}.zip -d "${NAME}"-${TIMESTAMP}
        rm ${BINARYCODE}.zip

        echo ""
        echo "\033[0;32m'${NAME}.docx' was splitted successfully\033[0m"
    else
        echo ""
        echo "\033[0;31mThe file '${NAME}.docx' does not exist. Please try again. \033[0m"
        echo ""
        MAIN
    fi
}

if [ ! "$@" ]
then
    MAIN
else
    if [ -d "$@" ]
    then
        cd "$@"
        echo "\033[0;36mChanged directory to '/$@'\033[0m"
        echo ""
        MAIN
    else
        echo "\033[0;31mThe directory '/$@' does not exist, or may contain a special character that was not escaped. Please try again. \033[0m"
        echo ""
    fi
fi
