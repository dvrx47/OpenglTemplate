FILE_OUT = main.prog
FILE_IN = main.cpp setup.o windowRender.o
CC = g++
FLAGS = -lX11 -lGL -lGLU -lglut -Wall

$(FILE_OUT): $(FILE_IN)
	$(CC) $(FILE_IN) $(FLAGS) -o $(FILE_OUT)

setup.o: setup.hpp setup.cpp
	$(CC) -c setup.hpp setup.cpp

windowRender.o: windowRender.hpp windowRender.cpp
	$(CC) -c windowRender.hpp windowRender.cpp

run: $(FILE_OUT)
	./$(FILE_OUT)

distclean:
	rm -f *.prog *.o *.gch

clean:
	rm -f *.o *.gch
