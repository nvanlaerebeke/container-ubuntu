# container-ubuntu

## Introduction

Container with basic tools to quickly debug problems and test things on ubuntu.  
This is easier to deploy and dispose then setting up virtual machines.

## Building the image

A makefile that builds the docker container is included, to build run:

```
NAME="ubuntu" TAG="latest" make build
```

This will result in a local image tagged with as "ubuntu:latest".  
See the 'Additional Options' section for more information about the available options.  

To push the image to the repository use the command below.  

## Pushing the image to a repository

The included makefile can also push the build image, first the container is build with the given options and once build it is pushed to the repository.

To build and push, run:

```
NAME="ubuntu" TAG="latest" make push
```

### Additional Options

There are several options that can be passed to customize the build process.  
The defaults are only set when using the Jenkins pipeline.

- REPO(default: registry.crazyzone.be): repository to push the image to
- NAME(default: ubuntu): name of the image
- TAG(default: latest): tag name


## Using the image

By default the image does not need any exposed ports, this will dependon what the use of the container will be.  
To run it, execute the following command:  


```
docker run --rm -ti registry.crazyzone.be/ubuntu /bin/bash
```

## SSL/TLS

No certificate support is provided, it is assumed that the container will be run behind a reverse proxy doing SSL termination

## Building with Jenkins

The included Jenkinsfile is made to be run and deploy on the crazyzone network.  
The Jenkinsfile can be modified can be modified to apply to other environments