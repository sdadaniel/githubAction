FROM alpine:3.16

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
COPY . .

#yarn 설치
RUN set -eux \
    & apk add \
        --no-cache \
        nodejs \
        yarn


#패키지 다운로드
RUN yarn

#빋르
RUN yarn build

#포트 열기
EXPOSE 3000

CMD ["yarn","start"]
