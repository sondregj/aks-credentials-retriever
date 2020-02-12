# Service Principal Credentials Retriever for Azure Kubernetes Service

> Image for usage with Kubernetes Pods that extracts credentials from an AKS host node, and places them in a specified location.

Retrieves the values that [SOPS](https://github.com/mozilla/sops) needs for decrypting secrets with Azure KeyVault. The values are placed in a shell script that exports them in the format SOPS expects.

The image is ideal for retrieving Azure Credentials for Flux CD, being used as an `InitContainer` with a volume shared with Flux. Flux has SOPS included, making it possible to use it in a generator in a `.flux.yaml`-file.

## Usage

> TODO
