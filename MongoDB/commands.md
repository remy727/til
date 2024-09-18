### Connect and Use MongoDB
```bash
mongosh
```

### MongoDB URL
```bash
mongodb://username:password@127.0.0.1:27017/databasename?authSource=admin
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
```bash
use new_database_name
db.myCollection.insertOne({ name: "test"}) # database is not actually created until it gets content!
```
