FROM alpine:latest as base
RUN apk add --no-cache nodejs npm
WORKDIR /app
COPY . /app
RUN npm install

from base as dev
ENV NODE_ENV=dev
EXPOSE 9006
ENTRYPOINT ["node"]
CMD ["serverdev.js"]
