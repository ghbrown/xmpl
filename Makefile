
# use usr/local for "sysadmin install location" unless PREFIX supplied
ifeq ($(PREFIX),)
	PREFIX := usr/local
endif

install:
	cp -f src/xmpl.sh $(PREFIX)/bin/xmpl.sh
    cp -rf data $(PREFIX)/share/xmpl
    # compress mapage(s) before moving to $(PREFIX)/share/man

uninstall:
	rm $(PREFIX)/bin/xmpl.sh
	rm $(PREFIX)/share/xmpl
	# remove compressed manpage
