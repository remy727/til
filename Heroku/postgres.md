# Heroku Postgres

### List Postgres backups
```bash
$ heroku pg:backups --app example-app
```

### Create a Manual Backup
```bash
$ heroku pg:backups:capture --app example-app
```

### Downloading Your Backups
```bash
$ heroku pg:backups:url b001 --app example-app
```

### Import into local
```bash
$ pg_restore -x --no-owner -d [database] [dump file]
```
