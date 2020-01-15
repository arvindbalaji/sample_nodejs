FROM node:carbon-slim
LABEL MAINTAINER "Subash SN"

WORKDIR /app

COPY . .

RUN apt-get update && \
    apt-get install -y iputils-ping
RUN npm install -g nodemon && \
    npm install

CMD ["npm", "start"]