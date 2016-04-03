# Todo: Extract the below out into a generic "Ruby" base image

FROM alpine:3.3
MAINTAINER littleman.co <support@littleman.co>

ENV GOLLUM_VERSION 4.0.1
RUN apk update && \
    apk add curl \
        wget \
        bash \
	libxml2-dev \
        libxslt-dev \
        ruby-rdoc \
        ruby-irb \
        ruby \
        ruby-dev \
        build-base \
        icu-dev \
        zlib \
        zlib-dev && \
    rm -rf /var/cache/apk/* && \
    gem install nokogiri -- --use-system-libraries && \
    gem install gollum:${GOLLUM_VERSION} rack unicorn 

ADD . /data
WORKDIR /data

CMD ["gollum", "--port", "80", "--page-file-dir", "docs" ]
