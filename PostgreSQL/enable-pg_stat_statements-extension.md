# Enable `pg_stat_statements` extension
- Update `postgresql.conf`
```
shared_preload_libraries = 'pg_stat_statements'
```
- Create `pg_stat_statements` extension
```sql
CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;
```
