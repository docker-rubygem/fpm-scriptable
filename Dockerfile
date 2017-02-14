FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.4

RUN gem install fpm-scriptable --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fpm-script"]
CMD ["--help"]
