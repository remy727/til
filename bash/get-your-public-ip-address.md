# Get your public IP address (osx)
```bash
ifconfig -u | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2 | head -1
```