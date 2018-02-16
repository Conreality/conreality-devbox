FROM alpine:edge
RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update && apk upgrade

LABEL maintainer="Arto Bendiken <arto@conreality.org>"

ENV TZ="UTC" LANG="en_US.UTF-8"
VOLUME /srv

EXPOSE 22 5900

COPY .docker/install.sh /root/
RUN /root/install.sh
COPY /etc /etc
COPY --chown=admin:admin /home/admin /home/admin
COPY /usr/local /usr/local

COPY .docker/entrypoint.sh /root/
ENTRYPOINT ["/root/entrypoint.sh"]

CMD ["/bin/bash"]
