# Terraform ---------------------------------------------------------------------------------------------------------- #
.PHONY: terraform/apply
terraform/apply:
	terraform -chdir=terraform apply

.PHONY: terraform/destroy
terraform/destroy:
	terraform -chdir=terraform destory

.PHONY: terraform/init
terraform/init:
	terraform -chdir=terraform init

.PHONY: terraform/plan
terraform/plan:
	terraform -chdir=terraform plan

.PHONY: terraform/validate
terraform/validate:
	terraform -chdir=terraform validate

