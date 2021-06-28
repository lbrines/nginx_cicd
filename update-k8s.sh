#!/bin/bash

# update-k8s.sh
set -feu	# Usage: $0 <GIT_SHA>	# Fails when GIT_SHA is not provided

GIT_SHA=$1
sed -i "s|imagen: lbrines/nginx-prueba03:.*|imagen: lbrines/nginx-prueba03:$GIT_SHA|" clusters/prueba-03/ns-prueba-03/deploy-nginx.yaml
