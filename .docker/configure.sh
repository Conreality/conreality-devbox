#!/bin/sh

# Create group 'admin':
addgroup -g 1000 admin

# Create user 'admin':
adduser -u 1000 -G admin -g 'Admin' -s /bin/bash -D admin

# Add user 'admin' to group 'wheel':
addgroup admin wheel

# Change password for user 'admin':
echo admin:admin | chpasswd

# Create /tmp/.X11-unix needed by Xvfb:
mkdir -p /tmp/.X11-unix && chmod 1777 /tmp/.X11-unix

# Fix Openbox's `env: can't execute 'python': No such file or directory':
echo '#!/bin/sh' > /usr/libexec/openbox-xdg-autostart
