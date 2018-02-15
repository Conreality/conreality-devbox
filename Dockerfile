FROM alpine:edge

LABEL maintainer="Arto Bendiken <arto@conreality.org>"

RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk add --no-cache su-exec

ENV TZ="UTC"
ENV LANG="en_US.UTF-8"
VOLUME /srv

COPY .docker/entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]

CMD ["/bin/sh"]
