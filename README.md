# Develop a PHP website locally using Docker

I am running Ubuntu with Docker Engine installed. This is why I'm using the CLI approach. There might be a more convenient way using Docker Desktop.

## Install Docker environment

Link to installation guides: https://docs.docker.com/engine/install/

## PHP local development environment using Docker.

1. Build the image from the Dockerfile:

~~~bash
docker build -t apache-php-dev .
~~~

2. Start a container from the image we just built. This image will mount the *./app* folder when started:

~~~bash
docker run -d -p 8080:80 \
--mount type=bind,source="$(pwd)"/app,target=/var/www/html \
-it apache-php-dev
~~~

3. Start developing your website in the *./app* folder. You should now be able to see your website: `http://127.0.0.1:8080`
