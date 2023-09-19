# Queries

### Alter Sequence
```sql
select setval('table_name_id_seq', (select max(id) from table_name));
```

### List installed extensions
```sql
SELECT * FROM pg_extension;
```

### List enum types and values
```sql
select
  n.nspname as enum_schema,
  t.typname as enum_name,
  e.enumlabel as enum_value
from
  pg_type t
join
  pg_enum e on t.oid = e.enumtypid
join
  pg_catalog.pg_namespace n ON n.oid = t.typnamespace;
```

### Get columns
```sql
select *
from INFORMATION_SCHMEA.COLUMNS
where TABLE_NAME="table_name";
```

### Create extension
```sql
CREATE EXTENSION IF NOT EXISTS 'uuid-ossp';
```
