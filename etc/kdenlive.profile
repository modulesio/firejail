# Firejail profile for kdenlive
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/kdenlive.local
# Persistent global definitions
include /etc/firejail/globals.local

# blacklist /run/user/*/bus
noblacklist ${HOME}/.cache/kdenlive
noblacklist ${HOME}/.config/kdenliverc
noblacklist ${HOME}/.local/share/kdenlive

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
# net none
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,netlink
seccomp
shell none

private-bin kdenlive,kdenlive_render,dbus-launch,melt,ffmpeg,ffplay,ffprobe,dvdauthor,genisoimage,vlc,xine,kdeinit5,kshell5,kdeinit5_shutdown,kdeinit5_wrapper,kdeinit4,kshell4,kdeinit4_shutdown,kdeinit4_wrapper
private-dev
# private-etc alternatives,fonts,kde4rc,kde5rc,ld.so.cache,machine-id,passwd,xdg,X11

# noexec ${HOME}
noexec /tmp
