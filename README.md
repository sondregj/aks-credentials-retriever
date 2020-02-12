# Keyvault Credentials Retriever for Azure Kubernetes Service

Ideal for retrieving Azure Credentials for Flux CD.

InitContainer for Kubernetes Pods that extracts credentials from an AKS host node, and places them in a specified location.

This script can make Azure credentials available to e.g. Flux to consume when decrypting secrets.
