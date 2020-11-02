CC=g++


all: init_dirs build_libs
	$(CC) -c main.cpp -o ./out/app.o
	$(CC) ./out/app.o ./out/libs/libmath.so -o ./out/app.out 
build_libs: 
	$(CC) -c ./libs/math.cpp -o ./out/libs/math.o
	$(CC) -shared ./out/libs/math.o -o./out/libs/libmath.so 
init_dirs:
	rm -rf ./out
	mkdir ./out
	mkdir ./out/libs