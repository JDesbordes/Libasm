.DEFAULT_GOAL := all

# Include file
FILE_INC = ./includes/asm.hs

# **************************************************************************** #
# 								Libft ASM									   #
# **************************************************************************** #

NAME = libasm.a

# Libft ASM project files
FILE_SRC = ./srcs/ft_strcmp.s ./srcs/ft_strcpy.s ./srcs/ft_write.s ./srcs/ft_strlen.s ./srcs/ft_strdup.s\
			./srcs/ft_read.s ./srcs/ft_atoi_base.s ./srcs/ft_list_push_front.s

FILE_OBJ = $(FILE_SRC:.s=.o)
OBJ = $(addprefix $(DIR_OBJ), $(FILE_OBJ))

# **************************************************************************** #
# 								Building Rules								   #
# **************************************************************************** #

# Rule to build both executables
all: $(NAME)

# Rule to build Nm
$(NAME): $(OBJ) 
	ar rcs $(NAME) $(OBJ)

# On doit utiliser nasm
%.o: %.s $(FILE_INC)
	nasm -f macho64 -o $@  $<

# **************************************************************************** #
# 								Cleaning Rules								   #
# **************************************************************************** #

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean