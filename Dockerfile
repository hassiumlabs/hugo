FROM alpine

MAINTAINER andy@hassiumlabs.com

ENV HUGO_VERSION 0.17

RUN apk --no-cache add --update curl python py-pip && \
	curl -L https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz | tar xvz -C /tmp && \
    mv /tmp/hugo /usr/local/bin/hugo && \
    rm -rf /tmp/* && \
    pip install Pygments

EXPOSE 1313

ENTRYPOINT ["hugo"]
