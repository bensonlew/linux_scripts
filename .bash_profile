# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
export PYTHONPATH="/home/liubinxu/sanger_dev/src/biocluster:/home/liubinxu/sanger_dev/src/:/home/liubinxu/sanger_dev/src/mbio:":$PYTHONPATH
