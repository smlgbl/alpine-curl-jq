FROM alpine:3.22

LABEL maintainer='leifcr@gmail.com'
LABEL description='Alpine with jq and curl'

LABEL maintainer Leif Ringstad <leifcr@gmail.com>

RUN apk add --update --no-cache \
	bash curl dumb-init jq openssl \
	&& rm -fr /var/cache/apk/*

CMD ["/bin/bash"]
