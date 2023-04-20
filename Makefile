# Variables declaration ---------------------------------------------------------------------------------------------  #
NAMESPACE = "counter-service"
SERVICE   = "counter-service"

# Helm --------------------------------------------------------------------------------------------------------------- #
.PHONY: helm/delete
helm/delete:
	helm delete $(SERVICE) --namespace $(NAMESPACE)

.PHONY: helm/install
helm/install:
	helm install $(SERVICE) helm/$(SERVICE) --create-namespace --namespace $(NAMESPACE)

.PHONY: helm/template
helm/template:
	helm template helm/$(SERVICE) > /tmp/$(SERVICE).yaml

.PHONY: helm/test
helm/test:
	helm install $(SERVICE) helm/$(SERVICE) --create-namespace --namespace $(NAMESPACE) --dry-run --debug

.PHONY: helm/upgrade
helm/upgrade:
	helm upgrade $(SERVICE) helm/$(SERVICE) --namespace $(NAMESPACE)
