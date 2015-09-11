FROM node:0.12
MAINTAINER jeurboy jeurboy@gmail.com

ENV MONGO_EXP_USERNAME        admin
ENV MONGO_EXP_PASSWORD        password

ENV MONGO_SERVER        localhost
ENV MONGO_PORT          27017

RUN rm -rf /node_modules
RUN npm install mongo-express 

ADD sources/service_start /
RUN chmod +x /service_start

RUN cp node_modules/mongo-express/config.default.js node_modules/mongo-express/config.js

RUN sed -i "s/server:\s*'localhost',/server: '$MONGO_SERVER',/" /node_modules/mongo-express/config.js
RUN sed -i "s/port: 27017,/port: $MONGO_PORT,/" /node_modules/mongo-express/config.js

RUN chmod +x node_modules/mongo-express/app.js

EXPOSE 8081

CMD /service_start