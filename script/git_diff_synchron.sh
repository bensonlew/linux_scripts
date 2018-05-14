git diff  |grep "+++ b" |sed 's/+++ b\///g' |xargs -I {} sh script_synchron.sh {}
