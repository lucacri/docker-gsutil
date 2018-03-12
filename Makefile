TAG ?= latest
IMAGE := lucacri/docker-gsutil

build:
	@echo "------------------"
	@echo "BUILDING: "
	@echo "${IMAGE}:${TAG}"
	@echo "------------------"
	@echo ""
	@echo ""
	@docker build -t ${IMAGE}:${TAG} .
	@docker tag ${IMAGE}:${TAG} ${IMAGE}:latest

push:
	@echo "------------------"
	@echo "PUSHING: "
	@echo "${IMAGE}:${TAG}"
	@echo "------------------"
	@echo ""
	@echo ""
	@docker push ${IMAGE}:${TAG}
	@docker push ${IMAGE}:latest