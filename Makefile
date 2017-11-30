IMAGE_TAG=parthpatel1001/test_simple_node

ci: build
	echo "ci complete"

build:
	date > check.log
	docker build -t $(IMAGE_TAG) .

push:
	docker push $(IMAGE_TAG)

remove:
	docker rmi $(IMAGE_TAG) --force

pull:
	docker pull $(IMAGE_TAG)

run:
	docker run -p 49160:8080 $(IMAGE_TAG)