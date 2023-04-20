# Variables declaration ---------------------------------------------------------------------------------------------- #
AWS_DEFAULT_REGION="eu-west-1"

# Terraform ---------------------------------------------------------------------------------------------------------- #
.PHONY: terraform/apply
terraform/apply:
	AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) terraform -chdir=terraform apply

.PHONY: terraform/destroy
terraform/destroy:
	AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) terraform -chdir=terraform destroy

.PHONY: terraform/init
terraform/init:
	AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) terraform -chdir=terraform init

.PHONY: terraform/plan
terraform/plan:
	AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) terraform -chdir=terraform plan

.PHONY: terraform/validate
terraform/validate:
	AWS_DEFAULT_REGION=$(AWS_DEFAULT_REGION) terraform -chdir=terraform validate

