FROM jenkins/slave:3.19-1
MAINTAINER Oleg Nenashev <o.v.nenashev@gmail.com>
LABEL Description="This is a base image, which allows connecting Jenkins agents via JNLP protocols" Vendor="Jenkins project" Version="3.19"

COPY jenkins-slave /usr/local/bin/jenkins-slave

FROM java:7
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

ENTRYPOINT ["jenkins-slave"]
FROM gcc:4.9
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN g++ -std=c++11 -o myapplication main.cpp
CMD ["./myapplication"]