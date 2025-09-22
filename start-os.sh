#!/data/data/com.termux/files/usr/bin/bash
set -e

ROOTFS=~/debugger-code-os/rootfs

echo "[*] Khởi động Debugger Code OS..."
proot -S $ROOTFS /bin/sh <<'EOF'
export USER=root
export HOME=/home
export PATH=/bin:/usr/bin:/usr/local/bin

mkdir -p $HOME/.vnc

cat > $HOME/.vnc/xstartup <<EOT
#!/bin/sh
xrdb $HOME/.Xresources
openbox-session &
EOT
chmod +x $HOME/.vnc/xstartup

echo "123456" | vncpasswd -f > $HOME/.vnc/passwd
chmod 600 $HOME/.vnc/passwd

vncserver :1 -geometry 1280x720 -depth 24
EOF

echo "[*] Debugger Code OS đang chạy!"
echo "👉 Mở VNC Viewer, kết nối tới localhost:5901 (mật khẩu: 123456)"
