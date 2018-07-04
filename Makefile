NAME	=	deadlock
CC	=	gcc
CFLAGS	=	-lpthread
SRC	=	threads.c
OBJ	=	$(SRC:.c=.o)

all:	$(OBJ)
	$(CC) $(OBJ) $(CFLAGS) -o $(NAME)

clean:
	rm -f $(NAME)

fclean:	clean
	rm -f $(OBJ)

re:	fclean all

.PHONY:	all	clean	fclean	re
