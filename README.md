# Dockerack

Simple Rack application wrapped in a Docker image.

## Getting started
You would need Docker installed on your machine. This project was tested against `Docker version 1.12.1, build 23cf638`.

## Usage

Build the image and start a container:

```
docker build -t my_rack_app .
docker run -d my_rack_app
```

Check container logs and IP:

```
docker ps
docker logs *container_name_or_id*
docker inspect *container_name_or_id*
```

or

```
docker inspect --format '{{ .NetworkSettings.IPAddress }}' *container_name_or_id*
```

Check application is running:

```
curl *container_ip*:9292
```
