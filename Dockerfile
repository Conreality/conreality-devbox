FROM conreality/docker:latest

LABEL maintainer="Arto Bendiken <arto@conreality.org>"

ENV DISPLAY=":0"
EXPOSE 22 5900

COPY .docker/install.sh .docker/packages.txt /root/
RUN /root/install.sh /root/packages.txt

COPY .docker/configure.sh /root/
RUN /root/configure.sh

COPY /etc /etc
COPY --chown=admin:admin /home/admin /home/admin
COPY /usr/local /usr/local

COPY .docker/entrypoint.sh /tmp/
ENTRYPOINT ["/tmp/entrypoint.sh"]

CMD ["/bin/bash"]
