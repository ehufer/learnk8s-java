IMG_NAME := imhotepio/learnk8s-java
IMG_TAG  := sol

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build: ## Compiles the program
	@pushd service && mvn package && popd

img:   ## Build docker image
	@docker build -f Dockerfile --rm -t $(IMG_NAME):$(IMG_TAG) .

push:  ## Push docker image to registry
	@docker push $(IMG_NAME):$(IMG_TAG)
