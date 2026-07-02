#hi this is my custom commands!!

alias xstop='sudo /opt/lampp/lampp stop'
alias xstart='sudo /opt/lampp/lampp start'
alias xrestart='sudo /opt/lampp/lampp restart'

alias xonapache='sudo /opt/lampp/lampp startapache'
alias xonmysql='sudo /opt/lampp/lampp startmysql'
alias xonftp='sudo /opt/lampp/lampp startftp'

alias xoffapache='sudo /opt/lampp/lampp stopapache'
alias xoffmysql='sudo /opt/lampp/lampp stopmysql'
alias xoffftp='sudo /opt/lampp/lampp stopftp'

alias xstatus='sudo /opt/lampp/lampp status'

alias xaplog='tail -f /opt/lampp/logs/error_log'
alias xacclog='tail -f /opt/lampp/logs/access_log'
alias xmysqllog='tail -f /opt/lampp/var/mysql/*.err'

xhelp() {
cat <<EOF

XAMPP COMMANDS:

BASIC:
  xstart     -> start all services
  xstop      -> stop all services
  xrestart   -> restart all services
  xstatus    -> show status

SERVICES:
  xonapache   / xoffapache
  xonmysql    / xoffmysql
  xonftp      / xoffftp

LOGS:
  xaplog      -> Apache error log
  xacclog     -> Access log
  xmysqllog   -> MySQL log

OTHER:
  xhelp       -> show this help

EOF
}
