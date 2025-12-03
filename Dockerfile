# use oficials node image
FROM node:18
WORKDIR /app
# copy files
COPY package*.json ./
RUN npm install
COPY . .
# expose port
EXPOSE 3000
# run app
CMD ["node", "index.js"]
