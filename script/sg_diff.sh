#!/bin/bash
FILE=${1}
FILETO=$FILE
if [ ! -e "$FILE" ]; then
    echo $FILE" not exists"
    exit
fi
if [ -d "$FILE" ]; then
    echo $FILE" is dir input ids file"
    exit
fi
FILETO=`readlink -f $FILETO`
FILETO=`echo $FILETO|sed 's/.*SangerBiocluster/~\/wpm2\/sanger_bioinfo/'`
echo $FILETO

ssh -i $HOME/work/key/nb_id_rsa sanger@10.2.0.110 "cat "$FILETO |diff -b - $FILE
