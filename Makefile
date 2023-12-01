# Compiler and compilation flags
CC=g++
CFLAGS=--std=c++11

# Executable file name
EXE=tictactoe

# Default target
all: main.o board.o
	$(CC) $(CFLAGS) -o $(EXE) obj/*.o

# Target for main.o
main.o: obj src/main.cpp inc/main.hpp
	$(CC) $(CFLAGS) -c src/main.cpp -o obj/main.o

# Target for board.o
board.o: obj src/board.cpp inc/board.hpp
	$(CC) $(CFLAGS) -c src/board.cpp -o obj/board.o

# Target to create obj directory
obj:
	mkdir -p obj

# Clean target
clean:
	rm -f $(EXE)
	rm -rf obj

