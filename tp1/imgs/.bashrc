# Shell aliases
# 
VIM=/usr/pkg/bin/vim
if [ -f "$VIM" -a -x "$VIM" ]; then
	alias vi="vim"
fi

# Fancy prompt
#
PS1='\u@\h:\w\$ '
