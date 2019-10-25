#!/bin/bash
docker-compose build \
&& docker run -v lazyrecon_results:/home/lazyrecon_user/tools/lazyrecon/lazyrecon_results/ lazyrecon_docker -d $1