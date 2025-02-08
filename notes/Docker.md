1.  `docker save` to save the image

2.  `docker tag` to tag an image with a new name

3.  `docker run -it <image> /bin/bash` to run an image

4.  `docker pull docker.registry.url/image.name` to pull image

5. each command in a Dockerfile will generate a new layer; when you run a container from an image, a writable layer is added on top of the image
