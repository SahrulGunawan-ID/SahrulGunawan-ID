export PS1

# Error Command
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

[ -r /data/data/com.termux/files/usr/share/bash-completion/bash_completion ] && . /data/data/com.termux/files/usr/share/bash-completion/bash_completion


# Menambahkan fungsi untuk perintah cd ke /sdcard
function sdcard {
    cd /sdcard
}


# Warna
rd="\[\033[1;31m\]" # merah
gn="\[\033[1;32m\]" # ijo
be="\[\033[1;34m\]" # blue
yw="\[\033[1;33m\]" # kuning
ma="\[\033[1;35m\]" # magenta
cn="\[\033[1;36m\]" # cyan
pu="\[\033[1;37m\]" # putih
RESET="\[\033[0m\]"



xxr="\033[1;31m" # merah
xxd="\033[1;37m" # putih
xxi="\033[1;32m" # ijo
# Bersih Tugas
clear

# Menyimpan riwayat tanpa batasan
HISTSIZE=
HISTFILESIZE=

# Menambahkan riwayat ke file riwayat saat perintah dieksekusi
shopt -s histappend
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

# Default command line prompt.
PROMPT_DIRTRIM=2
#PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

#PS1="\[\033[1;33m\]PowerShell\[\033[1;37m\] \$([ \$? == 0 ] && echo \[\e[1\;32m\] || echo \[\e[1\;31m\])$([ $UID == 0 ] && echo '#' || echo '➜') \[\e[1;36m\]\W\[\e[m\] "

# Prompt PS1
echo -e "${xxd}Welcome To Home ${xxi}Admin"
echo -e "${xxd}$(hr ──)"
echo -e "${xxr}  ██╗██████╗ ███╗   ██╗    ██╗   ██╗"
echo -e "${xxr}  ██║██╔══██╗████╗  ██║    ██║   ██║"
echo -e "${xxr}  ██║██║  ██║██╔██╗ ██║    ██║   ██║"
echo -e "${xxd}  ██║██║  ██║██║╚██╗██║    ╚██╗ ██╔╝"
echo -e "${xxd}  ██║██████╔╝██║ ╚████║     ╚████╔╝"
echo -e "${xxd}  ╚═╝╚═════╝ ╚═╝  ╚═══╝      ╚═══╝"
PS1="\n.\n├── Dir -> \W\n└── Location -> \w\n${pu}(${gn}\W${pu}) ${rd}# ${pu}"

# Alias yang sering digunakan
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias upd='apt update && apt upgrade'
alias upl='apt list --upgradable && apt list --upgradable -a'
