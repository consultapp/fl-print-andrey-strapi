FROM  --platform=linux/amd64  node:20-bullseye
FROM  node:20-bullseye
RUN npm set strict-ssl false

WORKDIR /src

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY . .

ENV PORT=3000
ENV NODE_ENV=production
ENV DATABASE_CLIENT=sqlite
ENV DATABASE_FILENAME=src/workBase.db


RUN yarn build

EXPOSE $PORT

# CMD ["npm", "run", "start"]
ENTRYPOINT ["yarn", "start"]



