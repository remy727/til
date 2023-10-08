# PostgreSQL commands

### Export/Import Dump
```bash
# local
## export
pg_dump [database name] > [dump file]

## import
psql [database name] < [dump file]

# remote server
pg_dump -h [host address] -Fc -O -U [database user] [database name] > [dump file]
```
