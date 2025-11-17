#Consider the node image from docker hub
FROM node:20

#create working directory
WORKDIR /app

#Copy all dependencies to app folder
COPY package*.json ./

# Install node modules
RUN npm install

#Copy all other files of the application
COPY . .

#Port number at which application is running in container
EXPOSE 5173

#Run the application
CMD ["npm","run","dev"]
