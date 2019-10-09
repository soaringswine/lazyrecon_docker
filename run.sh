#!/bin/bash
docker build -t lazyrecon . \
&& docker run -v ./lazyrecon_results/:/home/lazyrecon_user/tools/lazyrecon/ lazyrecon -d $1