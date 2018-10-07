all: function
function: main factorial hello
	g++ main.o factorial.o hello.o -o Out
main: main.cpp
	g++ -c main.cpp
factorial: factorial.cpp
	g++ -c factorial.cpp
hello: hello.cpp
	g++ -c hello.cpp
clean:
	rm *o
