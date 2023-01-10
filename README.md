# MERN-app
A simple MERN (as in MongoDB, Express, React, Node.js) application

----

### MongoDB server
1. start the MongoDB container:
```
docker run \
  -d \
  -p 27017:27017 \
  --name mongodb \
  --network backend \
  -e MONGO_INITDB_ROOT_USERNAME=mongoadmin \
  -e MONGO_INITDB_ROOT_PASSWORD=secret \
  mongo:latest
```

**Notes**:
- `-d`: run as "detached"
- `-p`: exposed ports: <outside>:<inside>
- `--name`: container name
- `--network`: network, must be already existing (`docker network create <name>`)

### MongoDB Shell
1. start the client container:
```
docker run -it \
  --network backend \
  --name dbclient \
  ubuntu:latest bash
```
2. disconnect with `CTRL+p+q`
3. "attach" the container to the `frontend` network:
`docker network connect frontend dbclient`
4. connect to the client container:
`docker exec -it dbclient bash`

```
root@<cntnr>:/# apt update && apt install -y curl
root@<cntnr>:/# curl -sSLfO https://downloads.mongodb.com/compass/mongosh-1.6.1-linux-x64.tgz
root@<cntnr>:/# tar -xzf mongosh-1.6.1-linux-x64.tgz
root@<cntnr>:/# cp -a mongosh-1.6.1-linux-x64/bin/* /usr/local/bin/
root@<cntnr>:/# mongosh mongodb://mongoadmin:secret@mongodb:27017/
root@<cntnr>:/# 
root@<cntnr>:/# 
root@<cntnr>:/# 
root@<cntnr>:/# 
root@<cntnr>:/# 
```

