FROM ubuntu:latest

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN apt-get update -y && apt-get install gcc -y && apt-get install g++ -y && apt-get install apt-utils -y && apt-get install make -y 
RUN make
CMD ./Out
