NAME=dalibo/temboard-agent-sdk

build: centos6 centos7 stretch

%: Dockerfile.%
	docker build -t $(NAME):$* -f Dockerfile.$* .

push-%:
	docker push $(NAME):*
