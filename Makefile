.PHONY: build

build:
	test -f bin/rq || curl -o bin/rq https://s3-eu-west-1.amazonaws.com/record-query/record-query/x86_64-unknown-linux-musl/rq
	chmod +x bin/*
	docker build -t philipnrmn/prometheus-on-dcos:proxy .

