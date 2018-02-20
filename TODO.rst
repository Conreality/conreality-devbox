******
To-Dos
******

* Cleanly separate the ``make`` and ``make install`` targets (using ``docker tag``).

* Implement the ``make check`` target.

Bugs
----

* Fix x11vnc crashes.

* Fix key repetition speed in xterms.

* Fix a race condition in Xvfb/x11vnc startup.

Build
-----

* The Makefile directive ``$(wildcard home/admin/*/*)`` ignores hidden files.

Docker
------

* Build a Docker image with Travis CI.

  * https://docs.travis-ci.com/user/docker/

  * https://docs.travis-ci.com/user/build-stages/share-docker-image/

GUI
---

* Customize the Openbox rc.xml configuration.

  * http://openbox.org/wiki/Help:Configuration

* Customize the Openbox theme.

  * http://openbox.org/wiki/Help:Themes

  * https://urukrama.wordpress.com/openbox-guide/#Themes

* Implement shutdown/reboot.

  * http://openbox.org/wiki/Help:Actions#Restart

  * http://openbox.org/wiki/Help:Actions#Exit

  * https://urukrama.wordpress.com/openbox-guide/#shutdown

* Add icons to the popup menu.

  * https://wiki.archlinux.org/index.php/openbox#Menu_icons

* http://openbox.org/wiki/Help:Contents#Panels.2C_widgets.2C_desktops.2C_pagers.2C_etc..

Features
--------

* Support browsing of local mDNS services (Avahi?).

* Install the `Vulkan SDK <https://www.lunarg.com/vulkan-sdk/>`__.

Packages
--------

* S6.

* Erlang/OTP.

* For the SDKs:
  C#/.NET (``mono``),
  C++ (``clang``),
  Elixir (``elixir``),
  Go (``go``),
  Kotlin (N/A, ``openjdk8``),
  Python (``python3``),
  Ruby (``ruby``),
  SQL (``postgresql-client``).

* For the GDK: Lua (``lua5.3``).

* OpenCV (``opencv``).

* Qt 5, Android SDK.

* ROS 1 and/or ROS 2 (N/A).

* Gazebo? (N/A).

* `Dnsmasq <http://www.thekelleys.org.uk/dnsmasq/doc.html>`__ (``dnsmasq``)?

Future
------

* Explore `VirtualGL <https://en.wikipedia.org/wiki/VirtualGL>`__?

* Explore migration from Xvfb to `Xdummy <http://xpra.org/trac/wiki/Xdummy>`__?

* Migrate from X to `Wayland <https://en.wikipedia.org/wiki/Wayland_(display_server_protocol)>`__?
