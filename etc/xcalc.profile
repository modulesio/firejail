# Firejail profile for xcalc
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/xcalc.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /run/user/*/bus

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

include /etc/firejail/whitelist-var-common.inc

caps.drop all
net none
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none

disable-mnt
private
private-bin xcalc
private-dev
private-lib
private-tmp

noexec ${HOME}
noexec /tmp
