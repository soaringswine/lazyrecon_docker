FROM golang:1.13.1-buster AS build
RUN go get github.com/michenriksen/aquatone; exit 0
RUN go get -u github.com/tomnomnom/httprobe; exit 0
RUN go get github.com/tomnomnom/waybackurls; exit 0
RUN go get github.com/OWASP/Amass; exit 0
RUN go get -u github.com/tomnomnom/unfurl; exit 0
ENV GO111MODULE on
WORKDIR /go/src/github.com/OWASP/Amass
RUN go install ./...

FROM ubuntu:18.04
LABEL maintainer soaringswine
ENV HOME="/home/lazyrecon_user"
ENV TOOLS="$HOME/tools"
ENV TERM="xterm-256color"
ENV LC_ALL="en_US.UTF-8"
ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US.UTF-8"
RUN set -x \
    && apt-get -y update \
    && apt-get install -y --no-install-recommends --no-install-suggests \
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
        nmap \
        wget \
        curl \
        chromium-browser \
        locales \
        dnsutils \
    && apt-get clean autoclean \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/{apt,dpkg,cache,log}/ \
    && ulimit -n 2048 \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
RUN set -x \
    && addgroup --gid 1000 lazyrecon_user \
    && adduser --uid 1000 --ingroup lazyrecon_user --home /home/lazyrecon_user --shell /bin/bash --disabled-password --gecos "" lazyrecon_user
WORKDIR $TOOLS
RUN set -x \
    && git clone https://github.com/aboul3la/Sublist3r.git \
    && git clone https://github.com/maurosoria/dirsearch.git \
    && git clone https://github.com/blechschmidt/massdns.git \
    && git clone https://github.com/gnebbia/pdlist \
    && pip3 install dnsgen
WORKDIR $TOOLS/lazyrecon
RUN set -x \
    && wget https://raw.githubusercontent.com/soaringswine/lazyrecon_docker/master/lazyrecon.sh
WORKDIR $TOOLS/Sublist3r
RUN set -x \
    && pip install -r requirements.txt
WORKDIR $TOOLS/massdns
RUN set -x \
    && make
WORKDIR $TOOLS/pdlist
RUN set -x \
    && pip3 install -r requirements.txt \
    && python3 setup.py install
WORKDIR $TOOLS/SecLists/Discovery/DNS/
RUN set -x \
    && wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/dns-Jhaddix.txt \
    && cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
COPY --from=build /go/bin/amass /bin/amass
COPY --from=build /go/bin/aquatone /bin/aquatone
COPY --from=build /go/bin/httprobe /bin/httprobe
COPY --from=build /go/bin/waybackurls /bin/waybackurls
COPY --from=build /go/bin/unfurl /bin/unfurl
# Change home directory ownership and fix TLDextract caching permission error.
RUN set -x \
    && chown -R lazyrecon_user:lazyrecon_user $HOME \
    && chown -R lazyrecon_user:lazyrecon_user /usr/local/lib/python3.6/dist-packages/tldextract/
# Using fixuid to fix bind mount permission issues.
RUN set -x \
    && USER=lazyrecon_user \
    && GROUP=lazyrecon_user \
    && curl -SsL https://github.com/boxboat/fixuid/releases/download/v0.4/fixuid-0.4-linux-amd64.tar.gz | tar -C /usr/local/bin -xzf - \
    && chown root:root /usr/local/bin/fixuid \
    && chmod 4755 /usr/local/bin/fixuid \
    && mkdir -p /etc/fixuid \
    && printf "user: $USER\ngroup: $GROUP\npaths: \n - /\n - $TOOLS/lazyrecon/lazyrecon_results\n" > /etc/fixuid/config.yml
USER lazyrecon_user:lazyrecon_user
# Fix Chromium working with Aquatone in Docker. Chromium now runs without a sandbox, but since we're in a container, it's an ok trade-off.
RUN set -x \
    && printf 'CHROMIUM_FLAGS="--no-sandbox --headless"\n' > $HOME/.chromium-browser.init
#ENTRYPOINT ["fixuid", "/bin/bash"]
WORKDIR $TOOLS/lazyrecon
ENTRYPOINT ["fixuid", "bash", "./lazyrecon.sh"]
