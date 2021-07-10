FROM alpine:edge

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN apk --no-cache add --virtual build-deps \
      build-base \
      gettext-dev \
      git \
      py-setuptools \
      py-pip \
      python3-dev \
    && apk --no-cache add \
      gettext \
      py3-certifi \
      py3-chardet \
      py3-idna \
      py3-requests \
      py3-urllib3 \
      python3 \
##    && pip install git+https://github.com/linkcheck/linkchecker \
      && pip install git+https://github.com/JAremko/linkchecker \
    && apk del build-deps

COPY linkcheckerrc /root/.linkchecker/linkcheckerrc

ENTRYPOINT ["linkchecker"]

