TEXFILES = dot-emacs-org-mode.tex
HIGHLIGHT_OPTS = -O latex -l -f -t 8 -S lisp -K scriptsize -c highlight.sty

.PHONY: all clean

all: $(TEXFILES)

dot-emacs-org-mode.tex: dot-emacs-org-mode.l
	highlight $(HIGHLIGHT_OPTS) -i $< -o $@

clean:
	rm -f $(TEXFILES) highlight.sty *~
