image ?= universal

image.build:
	docker build \
		-f 'images/$(image)/Dockerfile' \
		-t 'homelab-$(image)' \
		--progress plain \
		.

image.shell: image.build
	docker run --rm -it 'homelab-$(image)' /bin/bash

.PHONY: image.build image.shell