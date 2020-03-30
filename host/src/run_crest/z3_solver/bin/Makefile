CXX=g++ 
TARGET=out 
SRCS=real_final.cpp 
#server_1.c
#$(wildcard *.cpp) $(wildcard *.c)
OBJS=$(SRCS:.cpp=.o) 
#$(SRCS:.c=.o)

Z3_DIR=..
Z3_LIB=$(Z3_DIR)/bin
Z3_INCLUDE=$(Z3_DIR)/include
CFLAGS = -I. -I$(Z3_INCLUDE)
INC = -I. -I$(pwd)
CXXFLAGS = $(CFLAGS)
LDFLAGS = -L/$(Z3_LIB)
LOADLIBES = -L. -lz3
 
all : $(TARGET)

$(TARGET) : server_1.o real_final.o
	$(CXX) -o $(TARGET) server_1.o real_final.o $(CFLAGS) $(INC) $(LDFLAGS) $(LOADLIBES)
 
server_1.o = server_1.c
	$(CXX) -c $(CFLAGS) $(INC) $(LDFLAGS) $(LOADLIBES)

real_final.o = real_final.cpp
	$(CXX) -c  $(CFLAGS) $(INC) $(LDFLAGS) $(LOADLIBES)

#$(TARGET) :
#	$(CXX) -c $(SRCS) $(CFLAGS) $(INC) $(LDFLAGS) $(LOADLIBES) 
 
clean :
	rm -f $(TARGET)
	rm -f *.o
