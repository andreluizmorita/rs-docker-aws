FROM node:10-alpine

WORKDIR /usr/app
COPY package.json yarn.lock ./

RUN yarn

COPY . .

EXPOSE 3000
CMD ["yarn", "start"]

# docker-machine create --driver amazonec2 aws01
# docker-machine env aws01
# eval $(docker-machine env aws01) # SET THE SERVER DOCKER
# docker-compose up -d
# docker-compose -f docker-compose.yml -f docker-production.yml up -d
# eval $(docker-machine env -u) # SET THE LOCALHOST DOCKER