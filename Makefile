.PHONY: bundle_install tests virtualenv setup 

bundle_install:
	# echo "gem: --no-document" > ~/.gemrc
	bundle install

virtualenv:
	pip install virtualenv
	virtualenv .venv
	.venv/bin/pip install -r requirements.txt

setup: bundle_install

tests:
	bundle exec kitchen converge
	bundle exec kitchen verify all
	
build:
	docker build -t salt-kitchen:latest .

run:
	docker run --rm -it -v ${PWD}:/src -v /var/run/docker.sock:/var/run/docker.sock salt-kitchen:latest sh