alias sg_go_dev='ssh -i ~/work/key/sanger-dev.6.key sanger-dev@10.2.3.172'
alias sg_go_sanger='ssh -i ~/work/key/nb_id_rsa sanger@10.2.0.110'
alias sg_go_isanger='ssh -i ~/work/key/nb2_rsa isanger@10.2.0.115'
alias sg_go_rnawl='ssh -p 20003 rnawl@1.15.184.85'
alias sg_go_wfh='ssh -i ~/work/key/wfh_id_rsa -p 28639 root@104.243.19.151'
alias sg_go_majorbio='ssh sanger-dev@10.2.3.172 -o "ProxyCommand=nc -X 5 -x 192.168.110.252:1080 %h %p"'
alias sg_go_majorbio2='ssh -oPort=6022 sanger-dev@111.229.123.133'
