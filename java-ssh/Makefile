.PHONY: build
.NOTPARALLEL:
build:
	docker build . -t homelab:latest

.PHONY: run
.NOTPARALLEL:
run: build
	docker run --privileged --name homelab -ti -d -p 3000:22 -v /var/run/docker.sock:/var/run/docker.sock homelab:latest

.PHONY: clean
.NOTPARALLEL:
clean:
	docker kill homelab
	docker rm homelab

