.PHONY: clean

SRCS = src/header.js    \
       src/emphasize.js

build: $(SRCS)
	mkdir -p build
	cat $(SRCS) >build/maria-emphasize.js
	jsmin <build/maria-emphasize.js >build/maria-emphasize-tmp.js
	cat src/header.js build/maria-emphasize-tmp.js >build/maria-emphasize-min.js
	rm build/maria-emphasize-tmp.js
	echo "define(['maria-amd'], function(maria) { // AMD" > build/maria-emphasize-amd.js
	cat build/maria-emphasize.js >> build//maria-emphasize-amd.js
	echo "\n}); // AMD" >> build/maria-emphasize-amd.js
	cp README.md build
	cp LICENSE build

clean:
	rm -rf build
