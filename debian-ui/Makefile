.PHONY: build
.NOTPARALLEL:
build:
	docker build . --tag xtop:latest

.PHONY: run
.NOTPARALLEL:
run: build
	docker run --privileged -d -p 8080:8080 --name xtop xtop

.PHONY: clean
.NOTPARALLEL:
clean:
	docker kill xtop
	docker rm xtop

