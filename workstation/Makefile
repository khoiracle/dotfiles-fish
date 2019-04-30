GITCOMMIT := $(shell git rev-parse --short=7 HEAD 2>/dev/null)
DOCKERHUB_USERNAME=khoiracle
USERNAME=khoi
NAME=workstation

all: build

build:
	docker build -t ${DOCKERHUB_USERNAME}/${NAME}:${GITCOMMIT} .

run: kill
	docker run -it -h ${NAME} -d -p 2222:2222 -p 60000-60010:60000-60010/udp --rm -v $(HOME)/.ssh:/home/${USERNAME}/.ssh --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --privileged --name ${NAME} ${DOCKERHUB_USERNAME}/${NAME}:${GITCOMMIT}

ssh:
	mosh --no-init --ssh="ssh -o StrictHostKeyChecking=no -p 2222" root@localhost -- tmux new-session -AD -s ${USERNAME}

kill:
	docker kill workstation | true

.PHONY: all build run kill
