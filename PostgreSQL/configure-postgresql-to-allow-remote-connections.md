# Show `postgresql.conf` location
```bash
postgres# show config_file;
```

# Show `pg_hba.conf` location
```bash
postgres# show hba_file;
```

# Steps to allow remote connections
- In `postgresql.conf` file, update as the follows.
```
#listen_addresses = 'localhost'
```
to
```
listen_addresses = '*'
```

- In `pg_hba.conf` file, add your IP address:
```
host    all             all             192.168.3.51/24         md5
```

# Restart the service and verify it’s up and running:
```bash
# Ubuntu
sudo ufw allow 5432
sudo systemctl restart postgresql
sudo systemctl status postgresql

# macOS
brew services restart postgresql@15
```
