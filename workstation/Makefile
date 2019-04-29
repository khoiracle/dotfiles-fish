GITCOMMIT := $(shell git rev-parse --short=7 HEAD 2>/dev/null)
NAME=workstation

all: build

build:
	docker build -t khoi/${NAME}:${GITCOMMIT} .

.PHONY: all build
