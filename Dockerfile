FROM node:18-alpine3.19
WORKDIR /usr/app/notifier
RUN apk add git
COPY . .
RUN cp default.config config.ini
RUN npm run prestart
EXPOSE 4040
CMD ["node", "index.js"]
