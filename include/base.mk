PDF = $(addsuffix .pdf, $(BASENAME))
TEX = $(addsuffix .tex, $(BASENAME))
PDFLATEX = pdflatex
OUT_DIR = texfiles

.PHONY: clean all

all: $(PDF)

$(PDF): $(TEX)
	-test -d $(OUT_DIR) || mkdir $(OUT_DIR)
	# Twice, so TOC is also updated
	$(PDFLATEX) -output-directory $(OUT_DIR) $<
	$(PDFLATEX) -output-directory $(OUT_DIR) $<
	# In case of a different Beamer template folder
	#TEXINPUTS=$(STY_DIR)//: $(PDFLATEX) -output-directory $(OUT_DIR) $<
	mv $(OUT_DIR)/$(PDF) .

clean:
	-rm -rf $(OUT_DIR) *~
	-rm -f $(PDF)