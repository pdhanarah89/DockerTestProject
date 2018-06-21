FROM jenkins/slave:3.19-1
MAINTAINER Oleg Nenashev <o.v.nenashev@gmail.com>
LABEL Description="This is a base image, which allows connecting Jenkins agents via JNLP protocols" Vendor="Jenkins project" Version="3.19"

COPY jenkins-slave /usr/local/bin/jenkins-slave

ENTRYPOINT ["jenkins-slave"]
FROM gcc:4.9
COPY . /usr/src/myappf
WORKDIR /usr/src/myappf
RUN g++ -std=c++11 -o myapplication main.cpp
CMD ["./myapplication"]