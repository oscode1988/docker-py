FROM python:3.8-alpine3.11
WORKDIR /work

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories \
	&& apk --update add --no-cache lapack-dev gcc freetype-dev \
	&& apk add --no-cache --virtual .build-deps gfortran musl-dev g++
