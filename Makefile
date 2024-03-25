SHARE = /usr/local/share
BIN = /usr/local/bin

install:
	mkdir -p $(SHARE)
	mkdir -p $(BIN)
	cp -r ./share/tst $(SHARE)
	cp -r ./bin/* $(BIN)
	chmod 755 $(BIN)/tst
	chmod 755 $(BIN)/runtst
	chmod 755 $(BIN)/rungdb
	chown $(USER) -R $(SHARE)/tst
	cp ./man/tst.1 /usr/share/man/man1/
