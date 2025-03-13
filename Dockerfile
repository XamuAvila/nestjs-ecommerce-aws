from node:20-alpine as development
ENV NODE_ENV development

WORKDIR /app

COPY package.json .
RUN npm install
RUN mkdir node_modules/.cache && chmod -R 777 node_modules/.cache 

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
