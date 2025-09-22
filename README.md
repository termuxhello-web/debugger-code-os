# Debugger Code OS

Debugger Code OS là một hệ điều hành **tối giản**, chạy trong Android thông qua **Termux + proot**, có **GUI qua VNC**.  
Đây không phải Ubuntu/Debian, mà là OS riêng dựa trên BusyBox + Openbox.

## Cách cài đặt
```bash
pkg update -y && pkg upgrade -y
pkg install git -y
git clone https://github.com/<your-username>/debugger-code-os.git
cd debugger-code-os
bash install.sh
