FROM debian:stretch

RUN set -xe && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install -y --no-install-recommends sl && \
	rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

