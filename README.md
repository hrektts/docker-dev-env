# docker-dev-env

[![Travis Build Status](https://travis-ci.org/hrektts/docker-dev-env.svg?branch=master)](https://travis-ci.org/hrektts/docker-dev-env)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)

My dockerized development environment

## Installation

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
docker run --name dev_env -dt hrektts/dev-env tail -f /dev/null
```

Shell Access
------------
```
docker exec -it dev_env zsh"
```
