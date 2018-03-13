# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rkhatri <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/11 23:04:03 by rkhatri           #+#    #+#              #
#    Updated: 2018/03/13 10:32:42 by rkhatri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=		libft.a

FLAGS		=		-Wall -Werror -Wextra

SRC			=		ft_memcmp.c				\
					ft_strclr.c				\
					ft_strncmp.c			\
					ft_memcpy.c				\
					ft_strcmp.c				\
					ft_strncpy.c			\
					ft_memdel.c				\
					ft_strcpy.c				\
					ft_strnequ.c			\
					ft_atoi.c				\
					ft_memmove.c			\
					ft_strdel.c				\
					ft_strnew.c				\
					ft_bzero.c				\
					ft_memset.c				\
					ft_strdup.c				\
					ft_strnstr.c			\
					ft_isalnum.c			\
					ft_putchar.c			\
					ft_strequ.c				\
					ft_strrchr.c			\
					ft_isalpha.c			\
					ft_putchar_fd.c			\
					ft_striter.c			\
					ft_strsplit.c			\
					ft_isascii.c			\
					ft_putendl.c			\
					ft_striteri.c			\
					ft_isdigit.c			\
					ft_putendl_fd.c			\
					ft_strjoin.c			\
					ft_strstr.c				\
					ft_isprint.c			\
					ft_putnbr.c				\
					ft_strlcat.c			\
					ft_strsub.c				\
					ft_itoa.c				\
					ft_putstr.c				\
					ft_strlen.c				\
					ft_strtrim.c			\
					ft_memalloc.c			\
					ft_putstr_fd.c			\
					ft_strmap.c				\
					ft_tolower.c			\
					ft_memccpy.c			\
					ft_strcat.c				\
					ft_strmapi.c			\
					ft_memchr.c				\
					ft_strchr.c				\
					ft_strncat.c			\
					ft_toupper.c			\
					ft_putnbr_fd.c			\
					ft_lstnew.c				\
					ft_lstdelone.c			\
					ft_lstdel.c				\
					ft_lstadd.c				\
					ft_lstiter.c			\
					ft_lstmap.c				\
					ft_iswhitespace.c		\
					ft_split_whitespaces.c	\
					ft_countwords.c			\
					ft_max.c				\
					ft_min.c				\

OBJ			=		$(SRC:.c=.o)

all: $(NAME)

$(NAME):
	gcc $(FLAGS) -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean:	clean
	/bin/rm -f $(NAME)

re:	fclean all
	gcc $(FLAGS) -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
