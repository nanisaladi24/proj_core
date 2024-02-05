#DIRECTORIES
PROJ_DIR = /Users/nanisaladi/Nani/Learn/C_codes/proj_core
BUILD_DIR = $(PROJ_DIR)/build
SRC_DIR = $(PROJ_DIR)/src
BIN_DIR = $(BUILD_DIR)/bin
OBJ_DIR = $(BUILD_DIR)/obj

#TOOLCHAIN
CC = gcc

#FILES
TARGET = test_app

#BUILD
$(TARGET): $(OBJ_DIR)/main.o #will run below lines if main.o is changed
	$(CC) -o $(BIN_DIR)/$(TARGET) $(OBJ_DIR)/main.o

#COMPILE
$(OBJ_DIR)/main.o: $(SRC_DIR)/main.c #will run below lines if main.c is changed
	$(CC) -c $(SRC_DIR)/main.c -o $(OBJ_DIR)/main.o

clean:
	-rm -rf $(BUILD_DIR)
	-mkdir -p $(BIN_DIR)
	-mkdir -p $(OBJ_DIR)