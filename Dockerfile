#!/bin/sh

FROM anapsix/alpine-java:8
MAINTAINER nimgrg.dev@gmail.com

ENV WM_PACKAGE wiremock

RUN mkdir /$WM_PACKAGE
WORKDIR /$WM_PACKAGE
COPY . /$WM_PACKAGE
ENTRYPOINT chmod +x /$WM_PACKAGE/copy.sh

EXPOSE 8080

ENTRYPOINT ["java","-jar","wiremock.jar", "--root-dir", "server"]