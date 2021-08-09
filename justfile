init:
    terraform init

plan:
    source ./.secret && terraform plan

apply:
    source ./.secret && terraform apply

clean:
    source ./.secret && terraform apply -destroy