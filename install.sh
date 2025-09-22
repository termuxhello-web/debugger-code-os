---

## 2. `install.sh`
```bash
#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "[*] Cài gói cần thiết..."
pkg install -y proot busybox tigervnc openbox x11-repo

echo "[*] Tạo rootfs Debugger Code OS..."
mkdir -p ~/debugger-code-os/rootfs/{bin,etc,home,proc,sys,tmp,usr,var}

cp $(which busybox) ~/debugger-code-os/rootfs/bin/
ln -sf busybox ~/debugger-code-os/rootfs/bin/sh

cat > ~/debugger-code-os/rootfs/init.sh <<'EOF'
#!/bin/sh
echo "Welcome to Debugger Code OS!"
export HOME=/home
export PATH=/bin:/usr/bin:/usr/local/bin
cd /home
/bin/sh
EOF
chmod +x ~/debugger-code-os/rootfs/init.sh

echo "[*] Debugger Code OS đã sẵn sàng!"
