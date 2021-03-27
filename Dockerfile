FROM node:12

# set working directory
WORKDIR /app

# update your path to find the app
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
# RUN yarn install
RUN npm install

# add the whole shibang to the container
COPY . /app

# what's the docker port you want to connect to?
EXPOSE 1234

# run the server application
# CMD [ "node", "app.js" ]
# CMD ["npm", "start"]

# the following command will keep the container alive so you can debug
# this line should not be used for production
ENTRYPOINT ["tail", "-f", "/dev/null"]
