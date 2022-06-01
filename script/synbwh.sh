name=$1
basename=$(basename name)
scp -i ~/work/key/wfh_id_rsa -P 28639 -r -C root@104.243.19.151:$name $basename
