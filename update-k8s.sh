#!/bin/bash

# update-k8s.sh
set -feu	# Usage: $0 <GIT_SHA>	# Fails when GIT_SHA is not provided

GIT_SHA=$1
sed -i "s|imagen: nginx:.*|imagen: nginx:$GIT_SHA|" k8s/deploy-ngix.yaml
