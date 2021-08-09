init:
    terraform init

plan:
    source ./.secret && terraform plan

apply:
    source ./.secret && terraform apply