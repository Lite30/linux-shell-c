# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra

# Source file
SRC = myshell.c

# Executable name
EXEC = myshell

# Rule to build the executable
$(EXEC): $(SRC)
	$(CC) $(CFLAGS) -o $(EXEC) $(SRC)

# Phony target to clean up generated files
.PHONY: clean
clean:
	rm -f $(EXEC)
