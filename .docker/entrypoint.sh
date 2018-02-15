#!/bin/sh

mkdir -p /etc/dropbear
chown root:root /etc/dropbear
chmod 700 /etc/dropbear

if [ ! -f /etc/dropbear/dropbear_ecdsa_host_key ]; then
  /usr/bin/dropbearkey -t ecdsa -f /etc/dropbear/dropbear_ecdsa_host_key
fi

exec "$@"
