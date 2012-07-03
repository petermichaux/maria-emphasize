.PHONY: clean

SRCS = src/header.js    \
       src/emphasize.js

build: $(SRCS)
	mkdir -p build
	cat $(SRCS) >build/maria-emphasize.js
	jsmin <build/maria-emphasize.js >build/maria-emphasize-tmp.js
	cat src/header.js build/maria-emphasize-tmp.js >build/maria-emphasize-min.js
	rm build/maria-emphasize-tmp.js

clean:
	rm -rf build
