.POSIX:

CONFIGFILE = config.mk
include $(CONFIGFILE)


all:
	@:

install:
	mkdir -p -- "$(DESTDIR)$(PREFIX)/bin"
	mkdir -p -- "$(DESTDIR)$(MANPREFIX)/man1"
	cp -- metar "$(DESTDIR)$(PREFIX)/bin"
	cp -- metar.1 "$(DESTDIR)$(MANPREFIX)/man1"
	chmod -- 755 "$(DESTDIR)$(PREFIX)/bin/metar"

uninstall:
	-rm -f -- "$(DESTDIR)$(PREFIX)/bin/metar"
	-rm -f -- "$(DESTDIR)$(MANPREFIX)/man1/metar.1"

clean:
	@:

.PHONY: all install uninstall clean
