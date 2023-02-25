
ifndef PREFIX
	PREFIX = /usr/local
endif
ifndef MANPREFIX
	MANPREFIX = $(PREFIX)
endif

DEST = $(DESTDIR)$(PREFIX)
MANDEST = $(DESTDIR)$(MANPREFIX)/share/man

# for non-system (non-sudo) install
DESTUSER=~/.local
MANDESTUSER=$(DESTUSER)/share/man

all:
	mkdir -p build
	@# executable
	echo "#!/bin/sh" > build/xmpl
	cat src/stylize_md.sh >> build/xmpl
	cat src/xmpl.sh >> build/xmpl
	sed -i 's|<prefix-tag>|$(DEST)|' build/xmpl
	chmod +x build/xmpl
	@# manpage
	gzip -c man/xmpl.1 > build/xmpl.1.gz

.PHONY: test
test:
	cp -rf test build/test
	chmod +x build/test/*
	@echo ''
	@build/test/extremal_lines.sh data/*

.PHONY: man
man:
	pandoc man/xmpl.1.md -s -t man -o man/xmpl.1

clean:
	rm -rf build

install:
	mkdir -p $(DEST)/bin $(DEST)/share/xmpl
	cp -f build/xmpl $(DEST)/bin/xmpl
	cp -rf data/* $(DEST)/share/xmpl
	mkdir -p $(MANDEST)/man1
	cp -f build/xmpl.1.gz $(MANDEST)/man1/xmpl.1.gz

uninstall:
	rm $(DEST)/bin/xmpl
	rm -r $(DEST)/share/xmpl
	rm $(MANDEST)/man1/xmpl.1.gz

install-user:
	mkdir -p $(DESTUSER)/bin $(DESTUSER)/share/xmpl
	cp -f build/xmpl $(DESTUSER)/bin/xmpl
	cp -rf data $(DESTUSER)/share/xmpl
	mkdir -p $(MANDESTUSER)/man1
	cp -f build/xmpl.1.gz $(MANDESTUSER)/man1/xmpl.1.gz

uninstall-user:
	rm $(DESTUSER)/bin/xmpl
	rm -r $(DESTUSER)/share/xmpl
	rm $(MANDESTUSER)/man1/xmpl.1.gz
