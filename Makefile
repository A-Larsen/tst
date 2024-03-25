SHARE = /usr/local/share
BIN = /usr/local/bin
LANGUAGES = bash c cpp js lua nasm pl py s sed sh
BINFILES = tst runtst rungdb

install:
	for file in $(LANGUAGES); do mkdir -p $(SHARE)/tst/$$file; done
	mkdir -p $(BIN)
	cp -r ./share/tst $(SHARE)
	cp -r ./bin/* $(BIN)
	for file in $(BINFILES); do chmod 755 $(BIN)/$$file; done
	chown -R $(USER) $(SHARE)/tst
	cp ./man/tst.1 /usr/share/man/man1/

uninstall:
	rm -rf $(SHARE)/tst
	for file in $(BINFILES); do rm -rf $(BIN)/$$file; done
