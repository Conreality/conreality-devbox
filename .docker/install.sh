#!/bin/sh

apk add --no-cache \
  bash             \
  dropbear         \
  su-exec          \
  sudo             \
  x11vnc@testing   \
  xvfb

# Create group 'admin':
addgroup -g 1000 admin

# Create user 'admin':
adduser -u 1000 -G admin -g 'Admin' -s /bin/bash -D admin

# Add user 'admin' to group 'wheel':
addgroup admin wheel

# Change password for user 'admin':
echo admin:admin | chpasswd
