# Pull/Download Official Postgres Image From Docker Hub
```bash
docker pull postgres
```

# Pull/Download Specific Official Postgres Image From Docker Hub
```bash
docker pull postgres:15.6
```

# Create/Run Postgres Container
```bash
docker run --name postgres-15.6 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres:15.6
docker run --name postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres
```

# Verify Executing Container
```bash
docker ps
```

# Interact With Executing Container
```bash
docker exec -it postgres-15.6 bash
```

# Connect to a PostgreSQL Database Server
```bash
psql -h localhost -U postgres
```