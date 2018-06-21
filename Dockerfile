FROM gcc:4.9
COPY . /usr/src/myappf
WORKDIR /usr/src/myappf
RUN g++ -std=c++11 -o myapplication main.cpp
CMD ["./myapplication"]