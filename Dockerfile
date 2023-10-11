FROM node:18.17.1

# Create app directory
RUN mkdir -p /root/face-recognition-brain-backend
WORKDIR /root/face-recognition-brain-backend

# Install app dependencies
COPY package.json /root/face-recognition-brain-backend
RUN npm install

# Bundle app source
COPY . /root/face-recognition-brain-backend

# Build arguments
ARG NODE_VERSION=18.17.1

# Environment
ENV NODE_VERSION $NODE_VERSION