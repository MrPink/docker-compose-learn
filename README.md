### Learning docker-compose

![alt text](https://i1.wp.com/foxutech.com/wp-content/uploads/2017/06/docker-compose1.png?fit=50%2C400&ssl=1 "docker-compose")

To run docker-compose and bring the services alive we need to run
..* `docker-compose up`

This will download or build the required images in this case download the Redis image and build the Python image with our `app.py`.

Take a look inside the Dockerfile
..* Where is the Docker image being downloaded from?
..* Is the Dockerfile using a Entrypoint or a Command?

If the Dockerfile is not using a `entrypoint` modify the Dockerfile to use one. Information about this can be found [here](https://docs.docker.com/engine/reference/builder/#entrypoint)

The `entrypoint.sh` should consist of a script that looks like

```
!#/bin/sh

case "$1" in
bash )
    bash
;;

start )
    python app.py
;;

esac

```

This should be in the root of the directory.
