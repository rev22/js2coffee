COFFEE=coffee

lib/%.js: src/%.coffee
	mkdir -p lib
	$(COFFEE) -pc $< >$@

all: lib/command.js lib/js2coffee.js lib/helpers.js lib/node_ext.js
