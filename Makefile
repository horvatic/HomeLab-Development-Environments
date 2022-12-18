.PHONY: build-ubuntu
.NOTPARALLEL:
build-ubuntu:
	cd ubuntu && docker build . -t homelab:latest

.PHONY: run-ubuntu
.NOTPARALLEL:
run-ubuntu: build-ubuntu
	docker run --name homelab -ti -d -p 3000:22 -v /var/run/docker.sock:/var/run/docker.sock homelab:latest

.PHONY: clean-ubuntu
.NOTPARALLEL:
clean-ubuntu:
	docker kill homelab
	docker rm homelab

