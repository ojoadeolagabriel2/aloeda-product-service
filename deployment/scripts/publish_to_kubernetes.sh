#!/bin/sh

set -xe

# shellcheck disable=SC2039
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DEFAULT_NS="${ENV_DEFAULT_NS:-ps-ns}"

kubectl delete namespace "${DEFAULT_NS}"|| :
kubectl apply -f "${DIR}/../k8s/apply.yml"