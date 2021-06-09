CXX     = g++
CFLAGS  =
INCLUDE = -Iinclude
EXEC    = coeff
SRC_DIR = ./src
SRC    := $(shell find $(SRC_DIR) -name '*.cpp')
OBJS    = $(SRC:%.cpp=%.o)

#build
all: $(EXEC)

%.o : %.cpp
	$(CXX) -o $@ $(CFLAGS) $(INCLUDE) -c $<

$(EXEC): $(OBJS)
	$(CXX) -o $@ $^ $(CFLAGS) $(INCLUDE)

#clean
clean:
	rm -f $(OBJS) $(EXEC)