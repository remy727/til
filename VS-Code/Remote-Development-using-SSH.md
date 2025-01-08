# Remote Development using SSH

1. Allow a remote computer to access your OS
	- [Mac](https://support.apple.com/guide/mac-help/allow-a-remote-computer-to-access-your-mac-mchlp1066/mac)	
2. Create your local SSH key pair
	- If you do not have a key, run the following command in a local terminal / PowerShell to generate an SSH key pair:
	```bash
	ssh-keygen -t ed25519 -b 4096
	```
	- Restrict the permissions on the private key file
		- For macOS / Linux, run the following shell command, replacing the path to your private key if necessary:
		```bash
		chmod 400 ~/.ssh/id_ed25519
		```
		- For Windows, run the following command in PowerShell to grant explicit read access to your username:
		```bash
		icacls "privateKeyPath" /grant :R
		```
		Then navigate to the private key file in Windows Explorer, right-click and select Properties. Select the Security tab > Advanced > Disable inheritance > Remove all inherited permissions from this object.
3. Authorize your Windows machine to connect
	Run one of the following commands, in a local PowerShell window replacing user and host name as appropriate to copy your local public key to the SSH host.
	- Connecting to a macOS or Linux SSH host:
	```bash
	$USER_AT_HOST="your-user-name-on-host@hostname"
	$PUBKEYPATH="$HOME\.ssh\id_ed25519.pub"

	$pubKey=(Get-Content "$PUBKEYPATH" | Out-String); ssh "$USER_AT_HOST" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo '${pubKey}' >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
	```
	- Connecting to a Windows SSH host:
	```bash
	$USER_AT_HOST="your-user-name-on-host@hostname"
	$PUBKEYPATH="$HOME\.ssh\id_ed25519.pub"

	Get-Content "$PUBKEYPATH" | Out-String | ssh $USER_AT_HOST "powershell `"New-Item -Force -ItemType Directory -Path `"`$HOME\.ssh`"; Add-Content -Force -Path `"`$HOME\.ssh\authorized_keys`" `""
	```
	Validate that the authorized_keys file in the .ssh folder for your remote user on the SSH host is owned by you and no other user has permission to access it. See the OpenSSH wiki for detail

## Reference
[Quick start: Using SSH keys](https://code.visualstudio.com/docs/remote/troubleshooting#_quick-start-using-ssh-keys)
