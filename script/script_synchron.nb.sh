FILE=${1}
dir=`dirname $0`
scp -r -i $HOME/work/key/nb_id_rsa  $FILE sanger@10.2.0.110:/mnt/lustre/users/sanger/sanger_bioinfo/$FILE
scp -r -i $HOME/work/key/nb_id_rsa  $FILE sanger@10.2.0.110:/mnt/lustre/users/sanger/wpm2/sanger_bioinfo/$FILE
scp -r -i $HOME/work/key/nb2_rsa $FILE isanger@10.2.0.115:/mnt/ilustre/users/isanger/sanger_bioinfo/$FILE
scp -r -i $HOME/work/key/nb2_rsa $FILE isanger@10.2.0.115:/mnt/ilustre/users/isanger/wpm2/sanger_bioinfo/$FILE
