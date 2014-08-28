BASENAME = foss-upb

PDF = $(addsuffix .pdf, $(BASENAME))
TEX = $(addsuffix .tex, $(BASENAME))
PDFLATEX = pdflatex
EXTRA_EXTENSIONS = .pdf .aux .log .nav .out .snm .toc
OUT_DIR = texfiles
CODE_DIR = code

.PHONY: clean all

all: $(PDF)

$(PDF): $(TEX)
	# Rebuild source files, if any
	-test -d $(CODE_DIR) && make -C $(CODE_DIR)
	# Create out directory
	test -d $(OUT_DIR) || mkdir $(OUT_DIR)
	# Twice, so TOC is also updated
	$(PDFLATEX) -output-directory $(OUT_DIR) $<
	$(PDFLATEX) -output-directory $(OUT_DIR) $<
	cp $(OUT_DIR)/$(PDF) .

clean:
	-test -d $(CODE_DIR) && make -C $(CODE_DIR) clean
	-rm -fr $(OUT_DIR)/*
