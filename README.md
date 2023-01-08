# MERN-app
A simple MERN (as in MongoDB, Express, React, Node.js) application

----

https://github.com/carmelo0x99/Flask-MongoDB-APIv2/blob/master/docker-compose.yaml
https://www.mongodb.com/languages/mern-stack-tutorial
https://www.mongodb.com/docs/mongodb-shell/install/

----

### MongoDB server
```
docker run \
  -d \
  -p 27017:27017 \
  --name mongodb \
  --network backend \
  mongo:latest
```

**Notes**:
- `-d`: run as "detached"
- `-p`: exposed ports: <outside>:<inside>
- `--name`: container name
- `--network`: network, must be already existing (`docker network create <name>`)

### MongoDB Shell
docker run -it --network backend --name dbclient ubuntu:latest bash
CTRL+p+q
docker network connect frontend dbclient
docker exec -it dbclient bash

root@<cntnr>:/# apt install -y curl
root@<cntnr>:/# curl -sSLfO https://downloads.mongodb.com/compass/mongosh-1.6.1-linux-x64.tgz
root@<cntnr>:/# tar -xzf mongosh-1.6.1-linux-x64.tgz
root@<cntnr>:/# cp -a mongosh-1.6.1-linux-x64/bin/* /usr/local/bin/
root@<cntnr>:/# mongosh mongodb://root:example@mongodb:27017/

