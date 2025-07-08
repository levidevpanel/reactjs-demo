# Dockerfile
FROM node:18-alpine
WORKDIR /var/www/html
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npx", "serve", "-s", "build", "-l", "3000"]
