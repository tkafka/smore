# Original:
# CC= g++
# CPPFLAGS= -std=c++11 -fopenmp -lm -Ofast

# Changed for mac (g++ = gcc -xc++ -lstdc++ -shared-libgcc)
CC = gcc-9
CPPFLAGS= -xc++ -lstdc++ -shared-libgcc -std=c++11 -fopenmp -lm -Ofast

# OBJS= deepwalk line walklets hpe app mf bpr hoprec warp nemf nerank
# LIBS= -L ../bin -lproNet
OBJS= tester
LIBS= -L ../bin -lsmore

all: $(OBJS)

$(OBJS):
	$(CC) $(CPPFLAGS) $@.cpp $(LIBS) -o $@
clean:
	rm $(OBJS)
