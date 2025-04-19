DIRS = 00 01 02 03 04 05 06

all: build clean

build:
	@for n in $(DIRS); do \
		ocamlopt -I ex$$n ex$$n/*.ml -o $$n; \
	done

clean:
	@for n in $(DIRS); do \
		rm ex$$n/*.cmi ex$$n/*.cmx ex$$n/*o 2>/dev/null || true; \
	done

fclean: clean
	@for n in $(DIRS); do \
		rm $$n 2>/dev/null || true; \
	done

re: fclean all
