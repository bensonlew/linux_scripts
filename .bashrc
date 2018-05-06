# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias pp_git_diff_add='git diff |grep "+++ b" |percol |sed "s/+++ b\///g" |xargs git add'
