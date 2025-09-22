#!/data/data/com.termux/files/usr/bin/bash
ROOTFS=~/debugger-code-os/rootfs
proot -S $ROOTFS /bin/sh -c "vncserver -kill :1"
echo "[*] Debugger Code OS đã tắt VNC!"
