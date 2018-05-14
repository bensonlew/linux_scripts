FILE=${1}
dir=`dirname $0`
scp -i $dir/key/sanger_id_rsa  $FILE sanger@192.168.12.102:/mnt/ilustre/users/sanger/sanger_bioinfo/$FILE

