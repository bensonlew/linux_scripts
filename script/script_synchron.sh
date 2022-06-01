FILE=${1}
FILE=`readlink -f $FILE`
FILE=`echo $FILE |sed 's/.*\/SangerBiocluster\///g'`
FILETO=$FILE
if [ -d "$FILE" ]; then
    FILETO=`echo $FILE | sed 's/\/$//g' |sed 's/[^\/]*$//'`
    DIR=$FILETO
else
    DIR=`echo $FILE | sed 's/[^\/]*$//'`
fi
dir=`dirname $0`
echo /mnt/lustre/users/sanger-dev/biocluster/$FILETO
scp -r -i ../key/sanger-dev.6.key $FILE sanger-dev@10.2.3.173:/mnt/lustre/users/sanger-dev/wpm2/sanger_bioinfo/$FILETO

