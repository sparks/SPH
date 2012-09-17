# Author: Severin Smith

##Tool##

CXX = g++

CXXCOMPILE = $(CXX)
INCLUDES = -I./
COMPILEFLAGS = $(INCLUDES) -DSC_INCLUDE_FX -O3

CXXLINK = $(CXX)
LINKFLAGS = -lm

##SYSTEM C##

##Files/Dirs##

NAME       = main
SOURCES    = $(wildcard *.c) $(wildcard *.cpp) $(wildcard *.h)
OBJECTS    = $(patsubst %.cpp, %.o, $(SOURCES))

all: $(NAME)

$(NAME): $(OBJECTS)
	$(CXXLINK) $(OBJECTS) $(LINKFLAGS) -o $(NAME)

.cpp.o:
	$(CXXCOMPILE) $(COMPILEFLAGS) -c $< -o $@

clean:
	rm -f *.o $(NAME)