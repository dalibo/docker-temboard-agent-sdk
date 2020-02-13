NAME=dalibo/temboard-agent-sdk

build: centos6 centos7 stretch jessie wheezy

%: Dockerfile.%
	docker build --build-arg http_proxy -t $(NAME):$* -f Dockerfile.$* .

push-%:
	docker push $(NAME):$*
