NAME=dalibo/temboard-agent-sdk

build: centos6 centos7 buster stretch jessie wheezy

%: Dockerfile.%
	docker build --build-arg http_proxy -t $(NAME):$* -f Dockerfile.$* .

push-%:
	docker push $(NAME):$*

test-%:
	docker run -v $$(pwd):/workspace -e HISTFILE=/workspace/.bash_history --rm -it $(NAME):$* /bin/bash
