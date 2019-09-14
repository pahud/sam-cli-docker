FROM linuxbrew/brew

RUN brew tap aws/tap; \
brew install awscli aws-sam-cli

# CMD ["/bin/bash"]

RUN	useradd -m -s /bin/bash samcli \
	&& echo 'samcli ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers

USER samcli

WORKDIR /home/samcli
