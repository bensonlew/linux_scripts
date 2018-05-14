FILE=${1}
dir=`dirname $0`
scp -i $dir/key/sanger-dev.key  -r $FILE sanger-dev@192.168.12.102:/mnt/ilustre/users/sanger-dev/biocluster/$FILE

