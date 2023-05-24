# Alter Sequence
```sql
select setval('brands_id_seq', (select max(id) from products));
```
