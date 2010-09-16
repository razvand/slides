TEXFILES = commands.tex
HIGHLIGHT_OPTS = -L -l -f -t 8 -S Bash -K footnotesize -c highlight.sty

.PHONY: all clean

all: $(TEXFILES)

commands.tex: commands.lst
	highlight $(HIGHLIGHT_OPTS) -i $< -o $@

clean:
	rm -f $(TEXFILES) highlight.sty *~
