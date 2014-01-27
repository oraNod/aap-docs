#!/usr/bin/make

bare_html = output/bare.html
final_html = final.html
gollum_options = --css --allow-uploads --template-dir ../../gollum-templates/

all: html pdf

start-gollum:
	bundle exec gollum $(gollum_options) --config config.rb

html: includes/header.html includes/footer.html
	@echo "Note: Gollum must be running for html generation ('make start-gollum')."
	@echo "Note: html is generated from git - uncommitted changes won't be included."
	curl http://0.0.0.0:4567/html/awx -o $(bare_html) --silent --show-error
	cat includes/header.html > $(final_html)
	cat $(bare_html) >> $(final_html)
	cat includes/footer.html >> $(final_html)

pdf:
	prince --fileroot=. $(final_html) -o output/awx.pdf
