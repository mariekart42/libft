# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmensing <mmensing@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/04 00:22:41 by mmensing          #+#    #+#              #
#    Updated: 2022/06/06 22:13:15 by mmensing         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libft.a
#define compiler and flags
CC= gcc 
CFLAGS= -Wall -Wextra -Werror
HEADER= libft.h
#Source Functions for the library
MAND_SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c \
         ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
         ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c \
         ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c \
         ft_calloc.c ft_strdup.c \
         ft_substr.c ft_strjoin.c ft_strtrim.c ft_strmapi.c \
	    ft_itoa.c ft_striteri.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
	    ft_split.c ft_putchar_fd.c \
		 
BONUS_SRC = ft_lstnew.c ft_lstsize.c ft_lstadd_front.c ft_lstadd_back.c ft_lstdelone.c \
			ft_lstclear.c ft_lstiter.c ft_lstlast.c \
		   #ft_lstmap.c 
# The object files after compiling
MAND_OBS = $(MAND_SRC:%.c=%.o)

BONUS_OBS = $(BONUS_SRC:%.c=%.o)

RM = rm -f

all: $(NAME)

$(NAME): $(MAND_OBS) $(HEADER)
	ar rcs $(NAME) $(MAND_OBS)

clean:
	$(RM) $(MAND_OBS) $(BONUS_OBS)

fclean: clean
	${RM} $(NAME)
	
bonus: $(BONUS_OBS) $(HEADER)
	ar rcs $(NAME) $(BONUS_OBS)

re: fclean all

.PHONY: all clean fclean re bonus
