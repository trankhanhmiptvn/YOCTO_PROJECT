# Simple Makefile for hello_github
all: hello_github

hello_github: hello_github.c
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

clean:
	rm -f hello_github

install:
	install -d $(DESTDIR)/usr/bin
	install -m 0755 hello_github $(DESTDIR)/usr/bin
