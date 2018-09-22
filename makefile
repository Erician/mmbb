.PHONY: clean 

PRODUCTS = mmbb
default: $(PRODUCTS)

SRC = mmbb.c
JUNK = *~ $(OBJDIR)/*.o $(OBJDIR)/*.a  

CC= g++

CFLAGS = -g -Wall -Wno-unused -Wno-sign-compare -std=c++11 -I.

LIBS = -lpthread

$(PRODUCTS): $(SRC) 
	$(CC) -o $@  $^  $(LIBS)

clean:
	rm -f $(JUNK) $(PRODUCTS)


