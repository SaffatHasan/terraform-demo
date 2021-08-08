# Terraform Demo

Purpose is to POC what terraform might look like for a standard developer workflow.

## Use Cases

1. Bootstrap an EKS cluster using Terraform
1. Install ArgoCD
    - ArgoCD Dashboard should be reachable via the public internet
1. Install ArgoCD Apps of Apps model
    - Tekton should be reachable via the public internet
1. Install Hello World application 
    - ArgoCD should manage the CD of the app
    - Tekton should manage the CI of the app
    - ArgoCD should _only_ deploy a new version if the app succeeds in its pipeline

## Requirements

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
