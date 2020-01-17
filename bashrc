# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk.x86_64
export TOOLSDIR=/home/esgyn/work/esgyn-tools
export PATH=$PATH:$TOOLSDIR/apache-maven-3.3.3/bin

export MY_LOCAL_SW_DIST=/home/esgyn/work/esgyn-software
path=$(pwd)
cd /home/esgyn/work/esgyn/
source ./env.sh > /dev/null
cd ${path}

export rundir=$TRAF_HOME/rundir
export scriptsdir=$TRAF_HOME/../sql/regress

alias trafci='trafci.sh -h 172.17.0.2:23400 -u db__root -p traf123'
export NO_BUILD_OM=1
