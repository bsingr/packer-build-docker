FROM hashicorp/packer:light
MAINTAINER "Jens Bissinger <mail@jens-bissinger.de>"
RUN \
	apk add --update git bash wget make && \
	apk -Uuv add groff less python py-pip && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*
ENTRYPOINT "/bin/bash"
