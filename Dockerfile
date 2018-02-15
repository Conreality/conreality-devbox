FROM alpine:edge
RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update && apk upgrade

LABEL maintainer="Arto Bendiken <arto@conreality.org>"

ENV TZ="UTC" LANG="en_US.UTF-8"
VOLUME /srv

EXPOSE 22

COPY .docker/motd.txt /etc/motd
COPY .docker/sshd.sh /usr/local/sbin/sshd
COPY .docker/install.sh ./
RUN ./install.sh

COPY .docker/entrypoint.sh ./
ENTRYPOINT ["./entrypoint.sh"]

CMD ["/bin/bash"]
