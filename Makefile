##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## makefile
##

NAME    =       my_hunter

SRC     =       $(shell find . -name '*.c')

OBJ     =       $(SRC:.c=.o)

##CFLAGS  +=      -Wall -Wextra

CFLAGS  +=      -I./include

all     :       $(NAME)

$(NAME) :       $(OBJ)
				gcc -o $(NAME) $(OBJ) -l csfml-graphics -l csfml-audio -l csfml-window -l csfml-system -g3

clean   :
				find . -name "*.o" -type f -delete
				find . -name "vgcore.*" -type f -delete

fclean  :       clean
				rm -f $(NAME)

re      :       fclean all