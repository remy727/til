### Connect and Use MongoDB
```bash
mongosh
```

### Select databases
```bash
show dbs
```

### Enable Access Control
```bash
sudo nano /usr/local/etc/mongod.conf

security:
  authorization: "enabled"
```
Restart
