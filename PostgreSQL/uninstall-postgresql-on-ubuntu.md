# Uninstall PostgreSQl on Ubuntu
```bash
dpkg -l | grep postgres
sudo apt-get --purge remove postgresql postgresql-14 postgresql-client-14 postgresql-client-common postgresql-common
```