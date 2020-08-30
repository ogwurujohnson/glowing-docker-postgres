FROM node:12

ARG DATABASE_USER
ARG DATABASE_PASSWORD
ARG DATABASE_HOST
ARG DATABASE_PORT
ARG DATABASE_NAME

ARG DATABASE_POOL_MIN=2
ARG DATABASE_POOL_MAX=10
ARG PORT=3000

ENV DATABASE_USER $DATABASE_USER
ENV DATABASE_USER $DATABASE_USER



# install global packages
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH /home/node/.npm-global/bin:$PATH
RUN npm i npm@latest knex@0.20.13 -g

# Create Directory for the Container
WORKDIR /usr/src/app

COPY package*.json ./

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
RUN npm install

# Bundle app source
COPY . .

# TypeScript
RUN npm run build

EXPOSE $PORT

CMD [ "npm", "start" ]
