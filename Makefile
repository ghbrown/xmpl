
# use /usr/local ("sysadmin personal install location") unless
# PREFIX supplied
ifndef PREFIX
	PREFIX = /usr/local
endif
ifndef MANPREFIX
	MANPREFIX = $(PREFIX)
endif

DEST = $(DESTDIR)$(PREFIX)
MANDEST = $(DESTDIR)$(MANPREFIX)/share/man


all:
	mkdir -p build
	cp -f src/xmpl build/xmpl
	sed -i 's|<prefix-tag>|$(DEST)|' build/xmpl
	chmod +x build/xmpl
	gzip -c man/xmpl.1 > build/xmpl.1.gz

.PHONY: test
test:
	cp -rf test build/test
	chmod +x build/test/*
	@echo ''
	@build/test/is_last_line_empty.sh data/*
	@build/test/is_file_narrow.sh data/*

.PHONY: man
man:
	pandoc man/xmpl.1.md -s -t man -o man/xmpl.1

clean:
	rm -rf build

install:
	mkdir -p $(DEST)/bin
	cp -f build/xmpl $(DEST)/bin/xmpl
	cp -rf data $(DEST)/share/xmpl
	mkdir -p $(MANDEST)/man1
	cp -f build/xmpl.1.gz $(MANDEST)/man1/xmpl.1.gz

uninstall:
	rm $(DEST)/bin/xmpl
	rm -r $(DEST)/share/xmpl
	rm $(MANDEST)/man1/xmpl.1.gz
