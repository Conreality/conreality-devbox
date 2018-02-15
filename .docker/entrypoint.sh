#!/bin/sh

mkdir -p /etc/dropbear
chown root:root /etc/dropbear
chmod 700 /etc/dropbear
dropbearkey -t ecdsa -f /etc/dropbear/dropbear_ecdsa_host_key

exec "$@"
