NAME=draft-ietf-sidrops-rpki-prefixlist

.PHONY: all
all: drafts

.PHONY: drafts
drafts: $(NAME).txt

$(NAME).txt: $(NAME).xml
	xml2rfc $(NAME).xml --html --text --expand --allow-local-file-access

www: $(NAME).txt
	cp -v $(NAME).html $(NAME).exp.xml $(NAME).txt ~/Downloads/

clean:
	rm -f *.html *.txt *.exp.xml
