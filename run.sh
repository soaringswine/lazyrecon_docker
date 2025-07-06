#!/bin/bash
set -euo pipefail

if [ $# -lt 1 ]; then
    echo "Usage: $0 <domain>" >&2
    exit 1
fi

docker build --rm -f "Dockerfile" -t lazyrecon_docker:latest . \
&& docker run --user $(id -u):$(id -g) -v $(pwd)/lazyrecon_results:/home/lazyrecon_user/tools/lazyrecon/lazyrecon_results/ lazyrecon_docker -d "$1"

