# Makefile to launch docker commands

all: build run

build:
	docker build . -t pythoncanarias

run:
	docker run -ti -p 4000:4000 -v ${PWD}:/pycan_web pythoncanarias

