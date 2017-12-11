.POSIX:

PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

all:
	@:

install:
	mkdir -p -- "$(DESTDIR)$(PREFIX)/bin"
	mkdir -p -- "$(DESTDIR)$(MANPREFIX)/man1"
	mkdir -p -- "$(DESTDIR)$(PREFIX)/share/licenses/metar"
	cp -- metar "$(DESTDIR)$(PREFIX)/bin"
	cp -- metar.1 "$(DESTDIR)$(MANPREFIX)/man1"
	cp -- LICENSE "$(DESTDIR)$(PREFIX)/share/licenses/metar"
	chmod -- 755 "$(DESTDIR)$(PREFIX)/bin/metar"

uninstall:
	-rm -f -- "$(DESTDIR)$(PREFIX)/bin/metar"
	-rm -f -- "$(DESTDIR)$(MANPREFIX)/man1/metar.1"
	-rm -rf -- "$(DESTDIR)$(PREFIX)/share/licenses/metar"

clean:
	@:

.PHONY: all clean install uninstall
