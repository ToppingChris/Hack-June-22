FROM node:16-alpine

WORKDIR /app

ENV DATABASE_HOST="totipulocationsvcdb.postgres.database.azure.com"
ENV DATABASE_PORT=5432
ENV DATABASE_USERNAME="totipu"
ENV DATABASE_PASSWORD="industrija2!"
ENV DATABASE_NAME="sharecare-post"

COPY . .

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node", "src/index.js"]
