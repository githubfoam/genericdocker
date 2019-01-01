# .PHONY: clean
# clean:
#         rm *.o temp
build:
	docker build -t docker-example .

run:
	# docker run -d -p 8000:80 --name docker-example-1 docker-example:latest
	docker run -p 8000:80 --name docker-example-1 docker-example:latest
	# docker run docker-example:latest

teardown:
	docker container stop docker-example-1
	docker container prune -f
