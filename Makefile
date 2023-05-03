# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdiabate <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/29 12:52:21 by sdiabate          #+#    #+#              #
#    Updated: 2023/01/29 23:06:50 by sdiabate         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = libftprintf.a
CC = cc
RM = rm 
CFLAGS = -Wall -Wextra -Werror 

FILE = ft_print_hex.c ft_print_ptr.c ft_print_unsigned.c \
	   ft_printf.c ft_printf_utils.c ft_printf_utils2.c

OBJ_FILE = $(FILE:.c=.o)

green = \033[0;32m

all: $(NAME)

$(NAME): $(OBJ_FILE)
		@echo "creating $@"
		@ar rc $(NAME) $(OBJ_FILE)
		@echo "$(green)ft_printf Compelted!"

%.o:%.c
		@echo "compiling : $<"
		@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

clean:
		@$(RM) -f $(OBJ_FILE)
		@echo "$(green)ft_printf object files cleaned !"

fclean: clean
		@$(RM) -f $(NAME)
		@echo "$(green) ft_printf executable files cleaned !"

re:    fclean $(NAME)
		@echo "$(green) Cleaned and rebuilt everything for ft_printf!"

.PHONY: all clean fclean re

