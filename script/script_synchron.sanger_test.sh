FILE=${1}
dir=`dirname $0`
scp -i $dir/key/sanger-test.key $FILE sanger-test@192.168.12.102:/mnt/ilustre/users/sanger-test/biocluster/$FILE

