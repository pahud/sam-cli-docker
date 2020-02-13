.PHONY: all build push

IMAGE	?= pahud/aws-sam-cli
LATEST ?= latest

ifeq ($(shell test -e VERSION && echo -n yes),yes)
    VERSION = $(shell cat VERSION)
endif

all: build push-latest gen-version tag-version push-version

build:
	docker build -t  $(IMAGE):$(LATEST) .

push-latest:
	docker push $(IMAGE):$(LATEST)

test:
	docker run -ti -v $(HOME)/.aws:/home/samcli/.aws $(IMAGE):$(LATEST) sam help

gen-version:
	docker run pahud/aws-sam-cli:latest sam --version | awk '{print $$NF}' > VERSION

tag-version:
	docker tag $(IMAGE):$(LATEST) $(IMAGE):$(shell cat VERSION)

push-version:
	docker push $(IMAGE):$(shell cat VERSION)

