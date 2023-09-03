## 👋 Welcome to redis 🚀  

redis README  
  
  
## Install my system scripts  

```shell
 sudo bash -c "$(curl -q -LSsf "https://github.com/systemmgr/installer/raw/main/install.sh")"
 sudo systemmgr --config && sudo systemmgr install scripts  
```
  
## Automatic install/update  
  
```shell
dockermgr update redis
```
  
## Install and run container
  
```shell
mkdir -p "$HOME/.local/share/srv/docker/redis/rootfs"
git clone "https://github.com/dockermgr/redis" "$HOME/.local/share/CasjaysDev/dockermgr/redis"
cp -Rfva "$HOME/.local/share/CasjaysDev/dockermgr/redis/rootfs/." "$HOME/.local/share/srv/docker/redis/rootfs/"
docker run -d \
--restart always \
--privileged \
--name casjaysdevdocker-redis \
--hostname redis \
-e TZ=${TIMEZONE:-America/New_York} \
-v "$HOME/.local/share/srv/docker/casjaysdevdocker-redis/rootfs/data:/data:z" \
-v "$HOME/.local/share/srv/docker/casjaysdevdocker-redis/rootfs/config:/config:z" \
-p 80:80 \
casjaysdevdocker/redis:latest
```
  
## via docker-compose  
  
```yaml
version: "2"
services:
  ProjectName:
    image: casjaysdevdocker/redis
    container_name: casjaysdevdocker-redis
    environment:
      - TZ=America/New_York
      - HOSTNAME=redis
    volumes:
      - "$HOME/.local/share/srv/docker/casjaysdevdocker-redis/rootfs/data:/data:z"
      - "$HOME/.local/share/srv/docker/casjaysdevdocker-redis/rootfs/config:/config:z"
    ports:
      - 80:80
    restart: always
```
  
## Get source files  
  
```shell
dockermgr download src casjaysdevdocker/redis
```
  
OR
  
```shell
git clone "https://github.com/casjaysdevdocker/redis" "$HOME/Projects/github/casjaysdevdocker/redis"
```
  
## Build container  
  
```shell
cd "$HOME/Projects/github/casjaysdevdocker/redis"
buildx 
```
  
## Authors  
  
🤖 casjay: [Github](https://github.com/casjay) 🤖  
⛵ casjaysdevdocker: [Github](https://github.com/casjaysdevdocker) [Docker](https://hub.docker.com/u/casjaysdevdocker) ⛵  
