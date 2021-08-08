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

## Setup

You _must_ provide login credentials in a `.secrets` file at the root of this project.

```bash
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

## Requirements

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
