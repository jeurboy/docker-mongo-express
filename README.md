
## Building form the base image and Docker file 

To create the base image jeurboy/docker-phpmongodb we need to pull all the code from github.

* git clone https://github.com/jeurboy/docker-mongo-express.git

And then we will use this command to build image from Dockerfile.

* docker build -t jeurboy/docker-mongo-express .

## To start a service from image

We use follow command to start the images. we use -d for start as a daemon and use -e to pass an environment parameter to an image.

* docker run -p 8081:8081 -d -it -e MONGO_SERVER=192.168.99.100 -e MONGO_PORT=27017 jeurboy/docker-mongo-express

Here is available parameter with default value.

| Parameter | default value | remark |
| --------- | ------------- | ------ |
| MONGO_EXP_USERNAME | admin | Admin user for mongo express |
| MONGO_EXP_PASSWORD | password | Admin password for mongo express |
| MONGO_SERVER | localhost | Mongo server IP address |
| MONGO_PORT | 27017 | Mongo server port |

Test your deployment by :

curl http://localhost:8081/

##### PS Compatible with Mongo <= 2.6