#!/bin/bash

set -e

echo "$KUBECONFIG" | base64 -d > kubeconfig

kubectl --kubeconfig kubeconfig apply -f kubernetes/

rm kubeconfig