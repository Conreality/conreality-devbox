FROM alpine:edge
RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update && apk upgrade

LABEL maintainer="Arto Bendiken <arto@conreality.org>"

ENV TZ="UTC" LANG="en_US.UTF-8"
VOLUME /srv

EXPOSE 22 5900

COPY .docker/install.* /root/
RUN /root/install.sh /root/install.txt

COPY .docker/configure.sh /root/
RUN /root/configure.sh

COPY /etc /etc
COPY --chown=admin:admin /home/admin /home/admin
COPY /usr/local /usr/local

COPY .docker/entrypoint.sh /tmp/
ENTRYPOINT ["/tmp/entrypoint.sh"]

CMD ["/bin/bash"]
