
.PHONY: update

bootstrap: init push-charts push

init:
	bash ./hack/lomtik-init $(type)

push-charts:
	kubectl port-forward -n zot service/zot 5000:5000 &
	find ./packages/charts -mindepth 1 -maxdepth 1 -type d | xargs ./hack/build-and-push

push:
	bash ./hack/lomtik-push

delete:
	bash ./hack/lomtik-delete
