build:
	npm install
	cd node_modules/hammerjs && \
		npm install && \
		grunt concat string-replace uglify:min && \
		mv hammer.js ../../dist/hammer.js && \
		mv hammer.min.js ../../dist/hammer.min.js && \
		mv hammer.min.map ../../dist/hammer.min.map
	gulp build-site