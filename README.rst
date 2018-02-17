**********************************
Conreality Development Environment
**********************************

.. image:: https://img.shields.io/badge/license-Public%20Domain-blue.svg
   :alt: Project license
   :target: https://unlicense.org/

.. image:: https://img.shields.io/travis/conreality/conreality-devbox/master.svg
   :alt: Travis CI build status
   :target: https://travis-ci.org/conreality/conreality-devbox

|

https://wiki.conreality.org/DevBox

Screenshot
==========

Coming soon.

Prerequisites
=============

Build Prerequisites
-------------------

* Docker_

.. _Docker: https://www.docker.com/community-edition

Features
========

Network Services
----------------

* SSH server (dropbear) listening on exposed port 22.
* VNC server (x11vnc/xvfb) listening on exposed port 5900.

Installed Software
------------------

* The VIM, JOE, and nano editors.
* Bash, cURL, Git, GPG, Irssi, Sudo, screen, tmux, xterm, xz.
* OpenGL demos (mesa-demos).

Configuration
-------------

* The time zone is UTC (``TZ=UTC``), the locale is UTF-8
  (``LANG=en_US.UTF-8``).
