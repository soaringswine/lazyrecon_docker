FROM ubuntu:18.04

LABEL maintainer soaringswine

RUN set -x \
    && apt-get -y update && apt-get install -y --no-install-recommends --no-install-suggests \
        libcurl4-openssl-dev \
        libssl-dev \
        jq \
        ruby-full \
        libcurl4-openssl-dev \
        libxml2 \
        libxml2-dev \
        libxslt1-dev \
        ruby-dev \
        build-essential \
        libgmp-dev \
        zlib1g-dev \
        build-essential \
        libssl-dev \
        libffi-dev \
        python-dev \
        python-setuptools \
        libldns-dev \
        python3-pip \
        python-pip \
        python-dnspython \
        git \
        rename \
        xargs \
    && apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/{apt,dpkg,cache,log}/ \
    # Set ulimit just in case
    && ulimit -n 2048

ENTRYPOINT [ "/bin/bash" ]
