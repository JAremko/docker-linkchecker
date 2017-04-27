FROM alpine

MAINTAINER JAremko <w3techplaygound@gmail.com>

RUN apk --no-cache add --virtual build-deps \
      build-base \
      gettext-dev \
      git \
      py2-pip \
      python2-dev \
    && apk --no-cache add \
      gettext \
      python2 \
    && pip install setuptools \
    && pip install git+https://github.com/linkcheck/linkchecker \
    && pip uninstall -y setuptools \
    && apk del build-deps

COPY linkcheckerrc /root/.linkchecker/linkcheckerrc

ENTRYPOINT ["linkchecker"]

