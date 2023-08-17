#!/bin/bash
# Author: Keith "andMYhacks" Hoodlet
# Note: pairs with kaeferjaeger.sh

KAEFERJAEGER_INSTALL=/path/to/kaeferjaeger/downloads
TARGET=$1
OUTFILE=$2

cat ${KAEFERJAEGER_INSTALL}/*.txt \
 | grep -F "$TARGET" \
 | cut -d '[' -f 2 \
 | sed 's/\]//' \
 | sed 's/ /\n/g' \
 | sort -u \
 | grep $TARGET > $OUTFILE
