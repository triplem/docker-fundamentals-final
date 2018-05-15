FROM node:9-alpine

# copy required project files
COPY . /opt/ui

# all subsequent commands will run in the /opt/ui directory
WORKDIR /opt/ui
RUN npm install

# Expose port 3000, this is where note is servicg the output 
EXPOSE 3000

# use cmd instead of ENTRYPOINT, this is used already in the base image
CMD ["node", "src/server.js"]
