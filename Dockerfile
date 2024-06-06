FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS gha-demo.ebgo4nh.mongodb.net
ENV MONGODB_USERNAME itsadg
ENV MONGODB_PASSWORD BgHHoG0rLs4SvY9b

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]