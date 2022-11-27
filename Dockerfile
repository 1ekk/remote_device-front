FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

VOLUME /app/src

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]