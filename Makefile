NAME=dalibo/temboard-agent-sdk

build: centos6 centos7

centos%: Dockerfile.centos%
	docker build -t $(NAME):centos$* -f Dockerfile.centos$* .
