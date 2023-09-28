# Enable PostgreSQL Package Repository
```bash
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget -qO- https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo tee /etc/apt/trusted.gpg.d/pgdg.asc &>/dev/null
```

# Install PostgreSQL 15 Database Server and Client
```bash
sudo apt update
sudo apt install -y postgresql-15
```

# Verify that the PostgreSQL service is up and running:
```bash
sudo systemctl status postgresql
```

# Check the PostgreSQL version using the psql command line utility:
```bash
psql --version
```

# Update PostgreSQL Admin User Password
```bash
sudo -u postgres psql
postgres=# ALTER USER postgres PASSWORD 'newPassword';
```
