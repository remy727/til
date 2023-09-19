# PostgreSQL commands

### Export Dump
```bash
# local
pg_dump [database name] > [dump file]

# remote server
pg_dump -h [host address] -Fc -O -U [database user] [database name] > [dump file]
```
