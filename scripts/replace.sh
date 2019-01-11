#!/bin/bash


# example
# assumes saved as /usr/local/bin/replace
# assumes chmod 755 /usr/local/bin/replace
# replace manifest-template-ex.yml manifest-temp.yml DONOTPUSH/--- SPACE/sandbox8 DOMAIN/int-app.aws-usw02-pr.predix.io SERVICEIDENTIFIER/ LOGSTASHSERVICE/ NEWRELICSERVICE/


#########################################################################################
# CONFIGURATION
#########################################################################################

function usage {
    echo "Replace"
    echo "Usage: replace.sh <source-file> <dest-file> <find>/<replace> [ <find>/<replace> ..]"
    echo "Configured for up to 6 find/replace pairs"
    exit 1
}

SOURCE_FILE=$1
DEST_FILE=$2
FIND_REPLACE_1=$3
FIND_REPLACE_2=$4
FIND_REPLACE_3=$5
FIND_REPLACE_4=$6
FIND_REPLACE_5=$7
FIND_REPLACE_6=$8

if [ -z "$SOURCE_FILE" ] || [ -z "$DEST_FILE" ] || [ -z "$FIND_REPLACE_1" ]; then
    usage
    exit 1
fi

echo ""
echo "<<< CONFIG >>>"
echo ""
echo "source: ${SOURCE_FILE}"
echo "dest: ${DEST_FILE}"
echo "FIND_REPLACE_1: ${FIND_REPLACE_1}"
echo "FIND_REPLACE_2: ${FIND_REPLACE_2}"
echo "FIND_REPLACE_3: ${FIND_REPLACE_3}"
echo "FIND_REPLACE_4: ${FIND_REPLACE_4}"
echo "FIND_REPLACE_5: ${FIND_REPLACE_5}"
echo "FIND_REPLACE_6: ${FIND_REPLACE_6}"


#########################################################################################
# EVALUATE
#########################################################################################

case $# in
8)
 cat $SOURCE_FILE | sed "
 s/${FIND_REPLACE_6}/g
 s/${FIND_REPLACE_5}/g
 s/${FIND_REPLACE_4}/g
 s/${FIND_REPLACE_3}/g
 s/${FIND_REPLACE_2}/g
 s/${FIND_REPLACE_1}/g
 " > $DEST_FILE
 ;;
7)
 cat $SOURCE_FILE | sed "
 s/${FIND_REPLACE_5}/g
 s/${FIND_REPLACE_4}/g
 s/${FIND_REPLACE_3}/g
 s/${FIND_REPLACE_2}/g
 s/${FIND_REPLACE_1}/g
 " > $DEST_FILE
 ;;
6)
 cat $SOURCE_FILE | sed "
 s/${FIND_REPLACE_4}/g
 s/${FIND_REPLACE_3}/g
 s/${FIND_REPLACE_2}/g
 s/${FIND_REPLACE_1}/g
 " > $DEST_FILE
 ;;
5)
 cat $SOURCE_FILE | sed "
 s/${FIND_REPLACE_3}/g
 s/${FIND_REPLACE_2}/g
 s/${FIND_REPLACE_1}/g
 " > $DEST_FILE
 ;;
4)
 cat $SOURCE_FILE | sed "
 s/${FIND_REPLACE_2}/g
 s/${FIND_REPLACE_1}/g
 " > $DEST_FILE
 ;;
3)
 cat $SOURCE_FILE | sed "
 s/${FIND_REPLACE_1}/g
 " > $DEST_FILE
 ;;
esac

echo ""
echo "<<< FILE CONTENTS >>>"
echo ""
cat $DEST_FILE