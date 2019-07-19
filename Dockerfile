FROM alpine:latest

ENV HOME /home/samcli
ENV PATH $HOME/.local/bin:$PATH

RUN mkdir /root/bin /aws; \
	apk add --no-cache groff less bash python jq curl py-pip tzdata

RUN ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime
	
RUN apk add --no-cache --virtual .build-deps gcc python2-dev python3-dev linux-headers musl-dev && \
	pip install --upgrade pip; \
	adduser samcli -Du 5566; \
	chown -R samcli $HOME;

USER samcli

WORKDIR $HOME

RUN pip install --user --upgrade awscli aws-sam-cli;

USER root

RUN apk del .build-deps; \
	rm -rf /var/cache/apk/*
