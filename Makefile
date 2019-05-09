# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rpapagna <rpapagna@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/09 00:09:32 by rpapagna          #+#    #+#              #
#    Updated: 2019/05/09 02:58:18 by rpapagna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= fdf
GREEN	= \033[0;32m
RED		= \033[0;31m
NC		= \033[0m
FLAGS	= -Wall -Wextra -Werror
LIB		= libft/libft.a
LIBX	= libmlx/libmlx.a
SRC		= main.c

all:	$(NAME)

$(NAME):
		@printf "[$(GREEN)f.d.f.$(NC)]\t\t[:          :]\r"
		@make -C libft
		@printf "[$(GREEN)f.d.f.$(NC)]\t\t[:####      :]\r"
		@gcc $(FLAGS) src/main.c $(LIB) $(LIBX) -o $(NAME)
		@printf "[$(GREEN)f.d.f.$(NC)]\t\t[:#######   :]\r"
		@printf "[$(GREEN)f.d.f.$(NC)]\t\t[:##########:]\n"

debug:
		@gcc $(FLAGS) -g $(addprefix src/,$(SRCS)) $(LIB) $(LIBX) -o $(NAME)
		@printf "[$(GREEN)debug.$(NC)]\t\t[$(RED):####:$(NC)]\n"

clean:
		@printf "[$(RED)remove$(NC)]\t\t[:          :]\r"
		@make -C libft clean
		@printf "[$(RED)remove$(NC)]\t\t[:###       :]\r"
		@printf "[$(RED)remove$(NC)]\t\t[:#######   :]\r"
		@printf "[$(RED)remove$(NC)]\t\t[:##########:]\n"

fclean:
		@printf "[$(RED)remove$(NC)]\t\t[:          :]\r"
		@make -C libft fclean
		@printf "[$(RED)remove$(NC)]\t\t[:#####     :]\r"
		@rm -rf $(NAME)
		@printf "[$(RED)remove$(NC)]\t\t[:#######   :]\r"
		@printf "[$(RED)remove$(NC)]\t\t[:##########:]\n"

re: fclean all

.PHONY:	all clean fclean re debug
