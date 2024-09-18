### https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-os-x/

#!/bin/sh

brew tap mongodb/brew
brew install mongodb-community

### Enable Access Control
```bash
sudo nano /usr/local/etc/mongod.conf

security:
  authorization: "enabled"
```
Restart
