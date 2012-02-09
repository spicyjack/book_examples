#!/bin/sh

# common library for displaying/downloading book examples

display_info () {
    echo "Book name: ${BOOK_NAME}"
    echo "Book ISBN: ${BOOK_ISBN}"
    echo "URL to book examples: ${EXAMPLES_URL}"
    echo "Additional URLs: ${AUX_URLS}"
    if [ "x${EXAMPLES_URL}" != "x" ]; then
        echo "Download book examples? [Y/n]"
        read ANSWER
        echo "received $ANSWER"
        if [ "x$ANSWER" != "xn" -o "x$ANSWER" != "xN" ]; then
            if [ -e $(which wget) ]; then
                wget $EXAMPLES_URL
            else
                echo "wget unavailable, can't download samples"
            fi
        fi
    fi # [ "x${EXAMPLES_URL}" != "x" ]
}
