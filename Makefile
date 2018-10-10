.PHONY: all build push

TAG	?= pahud/aws-sam-cli:latest

all: build

build:
	@docker build -t  $(TAG) .
push:
	@docker push $(TAG)
test:
	docker run -ti -v $(HOME)/.aws:/home/samcli/.aws $(TAG) sam help



