TARGETS=Pr13-16
CC=g++
CFLAGS=-g -std=c++11
DEPS=Die.h
OBJ=Pr13-16.o Die.o
LIBS=

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

Pr13-16: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

clean:
	rm -f *~ *.o a.out

distclean: clean
	rm -f $(TARGETS)
