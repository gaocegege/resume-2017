.PHONY: resume

CC = xelatex
EXAMPLES_DIR = resume
RESUME_DIR = resume/resume
CV_DIR = resume/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

resume: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf

deploy:
	cp $(EXAMPLES_DIR)/resume.pdf docs/
