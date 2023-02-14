
# use /usr/local for "sysadmin personal install location" unless
# PREFIX supplied
ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif


all:
	mkdir -p build
	cp -f src/xmpl build/xmpl
	sed -i 's|<prefix-tag>|$(PREFIX)|' build/xmpl
	chmod +x build/xmpl
	@# compress manpage and place result in build

check:
	cp -rf test build/test
	chmod +x build/test/*
	@echo ''
	@build/test/is_last_line_empty.sh data/*
	@build/test/is_file_narrow.sh data/*

clean:
	rm -rf build

install:
	cp -f build/xmpl $(PREFIX)/bin/xmpl
	cp -rf data $(PREFIX)/share/xmpl
	@# copy compressed manpage to $(PREFIX)/share/man

uninstall:
	rm $(PREFIX)/bin/xmpl
	rm -r $(PREFIX)/share/xmpl
	@# remove compressed manpage
