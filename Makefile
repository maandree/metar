PREFIX = /usr
BIN = /bin
DATA = /share
BINDIR = $(PREFIX)$(BIN)
DATADIR = $(PREFIX)$(DATA)
MANDIR = $(DATADIR)/man
LICENSEDIR = $(DATADIR)/licenses

PKGNAME = metar
COMMAND = metar

all:
clean:

install:
	mkdir -p -- "$(DESTDIR)$(BINDIR)"
	mkdir -p -- "$(DESTDIR)$(MANDIR)/man1"
	mkdir -p -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)"
	install -m755 metar "$(DESTDIR)$(BINDIR)/$(COMMAND)"
	install -m644 COPYING "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)/COPYING"
	install -m644 metar.1 "$(DESTDIR)$(MANDIR)/man1/$(COMMAND).1"

uninstall:
	-rm -- "$(DESTDIR)$(BINDIR)/$(COMMAND)"
	-rm -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)/COPYING"
	-rm -- "$(DESTDIR)$(MANDIR)/man1/$(COMMAND).1"
	-rmdir -- "$(DESTDIR)$(LICENSEDIR)/$(PKGNAME)"

.PHONY: all clean install uninstall

