FILE = luanvan

GARBAGE = $(FILE).log $(FILE).nav $(FILE).out $(FILE).toc $(FILE).vrb $(FILE).snm $(FILE).bbl $(FILE).lof $(FILE).bbl $(FILE).blg $(FILE).glo $(FILE).ist $(FILE).lot $(FILE).synctex.gz *.aux *_latexmk *.fls

CHUONG = chuong/*.aux
TRANGBIA = trangbia/*.aux

# compile the document
default: $(FILE).tex 
	latexmk
clean:
	rm -f $(GARBAGE) && rm -rf $(CHUONG) && rm -rf $(TRANGBIA)
