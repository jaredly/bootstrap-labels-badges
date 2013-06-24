
build: components bootstrap-labels-badges.css
	@component build --dev

bootstrap-labels-badges.css: bootstrap-labels-badges.less
	node_modules/.bin/recess bootstrap-labels-badges.less --compile > bootstrap-labels-badges.css

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean
