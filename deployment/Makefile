all: build_publish deploy_to_k8s_cluster cleanup

.DEFAULT_GOAL := build_publish

DIR:=$(shell cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )

build_publish:
	@echo "building app"
	${DIR}/scripts/build_publish_to_docker.sh

deploy_to_k8s_cluster:
	@echo "deploy to kubernetes"
	${DIR}/scripts/publish_to_kubernetes.sh

cleanup:
	@docker system prune -af
	@echo "done!"