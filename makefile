NAME = my_mastermind

OBJ = obj/main.o\
	obj/my_mastermind.o\


CFLAGS += -Iinclude -Wall -Wextra -Werror -g3 -fsanitize=address

HEADER = include/main.h\
	include/my_mastermind.h\

BIN = bin/my_mastermind
CC = gcc
RM = rm -rf

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(BIN) $(OBJ) $(CFLAGS)

obj/main.o: src/main.c
	${CC} ${CFLAGS} -c $< -o $@
obj/my_mastermind.o: src/my_mastermind.c
	${CC} ${CFLAGS} -c $< -o $@

clean:
	$(RM) bin/my_mastermind bin/*.dSYM obj/*