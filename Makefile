newman-build:
	docker build -f Dockerfile -t newman-tests .

newman-run: newman-build
	docker run --rm -v $(PWD)/API/reports:/etc/newman/reports newman-tests

newman: newman-run
