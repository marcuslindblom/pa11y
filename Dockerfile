FROM alpine:3.12

RUN apk add --update coreutils jq bash curl npm
RUN npm i -g pa11y

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]