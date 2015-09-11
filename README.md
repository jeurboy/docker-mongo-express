
## Building form the base image and Docker file 

To create the base image jeurboy/docker-phpmongodb we need to pull all the code from github.

* git clone https://github.com/jeurboy/docker-phpmongodb.git

And then we will use this command to build image from Dockerfile.

* docker build -t jeurboy/docker-phpmongodb .

## To start a service from image

We use follow command to start the images. we use -d for start as a daemon and use -e to pass an environment parameter to an image.

* docker run -p 80:80 -d -it -e MONGO_SERVER=192.168.99.100 -e MONGO_PORT=27017 jeurboy/docker-phpmongodb

Here is available parameter with default value.

| Parameter | default value | remark |
| --------- | ------------- | ------ |
| MONGO_ADMIN_USERNAME | admin | Admin user for phpmongo |
| MONGO_ADMIN_PASSWORD | password | Admin password for phpmongo |
| MONGO_SERVER | localhost | Mongo server IP address |
| MONGO_PORT | 27017 | Mongo server port |
| MONGO_USERNAME | admin | Mongo server's user |
| MONGO_PASSWORD | password | Mongo server's password |

Test your deployment by :

curl http://localhost/

##### PS Compatible with Mongo <=2.6