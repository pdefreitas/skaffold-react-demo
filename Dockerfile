# pull official base image
FROM node:14-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# add app
COPY ./react-demo ./

RUN npm install --silent
RUN npm install react-scripts -g --silent

# start app
CMD ["npm", "start"]
