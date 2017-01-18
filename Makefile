docker-build:
	docker build -t fluentdhandler .
docker-test: docker-build
	docker run -it --rm -v $PWD:/usr/src/fluentd  --name my-fluenthandler-test fluentdhandler run-tests
