DOCKER_IMAGE_NAME=springboot-worker-example

.PHONY: all
all: build

.PHONY: build
build:
	@./mvnw clean package

.PHONY: docker-build
docker-build: build
	@docker build -t $(DOCKER_IMAGE_NAME) .

.PHONY: docker-run
docker-run:
	@docker run --rm \
	  -e AWS_SQS_ENDPOINT=https://sqs.sa-east-1.amazonaws.com \
	  -e AWS_SQS_QUEUE_NAME=<AWS_SQS_QUEUE_NAME> \
	  -e AWS_REGION=us-east-1 \
	  -e AWS_SQS_ENDPOINT=https://sqs.us-east-1.amazonaws.com/<AWS-ACCOUNT-ID>/<AWS_SQS_QUEUE_NAME> \
	  -e SQS_MAX_MESSAGES_PER_POLL=5 \
	  -e SQS_POLL_TIMEOUT=20 \
	  -e SQS_MAX_CONCURRENT_MESSAGES=5 \
	  -e AWS_ACCESS_KEY_ID=$(AWS_ACCESS_KEY_ID) \
	  -e AWS_SECRET_ACCESS_KEY=$(AWS_SECRET_ACCESS_KEY) \
	  -e AWS_SESSION_TOKEN=$(AWS_SESSION_TOKEN) \
	  $(DOCKER_IMAGE_NAME)

.PHONY: clean
clean:
	@./mvnw clean
	rm -rf target
