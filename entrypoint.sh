#!/bin/sh -l

echo ${KUBE_CONFIG_DATA} | base64 -d > kubeconfig
export KUBECONFIG=kubeconfig

result="$(kubectl $1)"

status=$?
echo "{name}={value}" >> $GITHUB_OUTPUT
echo "$GITHUB_OUTPUT"
if [[ $status -eq 0 ]]; then exit 0; else exit 1; fi
