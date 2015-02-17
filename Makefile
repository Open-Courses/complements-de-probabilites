SRC_DIR	= src
NAME	= Complement.Proba
CC		= pdflatex
SRC		= $(NAME).tex

$(NAME):
	cd $(SRC_DIR) && $(CC) -output-directory ../ $(SRC)
	cd $(SRC_DIR) && $(CC) -output-directory ../ $(SRC)

zip: fclean $(NAME)
	$(MAKE) clean
	zip -r $(NAME).zip . -x *.git*

clean:
	rm -f $(NAME).out $(NAME).aux $(NAME).toc $(NAME).log $(NAME).tex.backup

fclean: clean
	rm -f $(NAME).pdf $(NAME).zip
