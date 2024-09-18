### Connect and Use MongoDB
```bash
mongosh
```

### Select databases
```bash
show dbs
```

### Connect database
```bash
use [database_name]
```

### Add user
```bash
mongosh
use admin
db.createUser({ user: "remy727", pwd: "1234", roles: [{ role: "userAdminAnyDatabase", db: "admin" }] })
restart

mongo -u "remy727" -p "1234" --authenticationDatabase "admin"
```

### Create database
