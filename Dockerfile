FROM ubuntu
MAINTAINER Chistyakova Ekaterina
COPY Srypt.sh SistProg/laba1
ADD /Home /SistProg
RUN apt-get update
RUN apt-get install -y vim


