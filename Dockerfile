FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

VOLUME ./

COPY . .

ENV PORT=80

EXPOSE 80

CMD ["npm", "run", "dev"]