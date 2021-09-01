
plantuml: ALWAYS
	mkdir -p plantuml
	$(MAKE) -C ../plantuml-syntax-test
	rsync ../plantuml-syntax-test/uml/*.png plantuml/uml
	cp ../plantuml-syntax-test/index.html plantuml/index.html
	cp ../plantuml-syntax-test/style.css plantuml/style.css 

clean:
	@rm -rfv plantuml

ALWAYS:
