docker-dev-env
==============

My dockerized development environment

Installation
------------
Pull the image from the docker index.
```
docker pull hrektts/dev-env:latest
```
Alternately you can build the image locally.
```
git clone https://github.com/hrektts/docker-dev-env.git
cd docker-dev-env
docker build --tag="$USER/dev-env" .
```

Deployment
----------
```
docker run --name=dev_env -d hrektts/dev-env tail -f /dev/null
```

Shell Access
------------
```
docker exec -it dev_env sh -c "exec >/dev/tty 2>/dev/tty </dev/tty && bash"
```


