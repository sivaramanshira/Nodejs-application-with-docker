FROM alpine:latest as base
RUN apk add --no-cache nodejs npm
WORKDIR /app
COPY . /app
RUN npm install

from base as prod
ENV NODE_ENV=prod
EXPOSE 9005
ENTRYPOINT ["node"]
CMD ["server.js"]

from base as dev
ENV NODE_ENV=dev
EXPOSE 9006
ENTRYPOINT ["node"]
CMD ["serverdev.js"]
