
FROM gcc:4.9
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN g++ -std=c++11 -o myapplication main.cpp
CMD ["./myapplication"]