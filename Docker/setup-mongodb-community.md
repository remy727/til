# Pull the MongoDB Docker Image
```bash
docker pull mongodb/mongodb-community-server
```

# Run the Image as a Container
```bash
docker run --name mongo -d -p 27017:27017 mongodb/mongodb-community-server:latest
```

# Interact With Executing Container
```bash
docker exec -it mongo mongosh
```