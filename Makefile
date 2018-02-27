DOCKER = docker
XZ     = xz

IMAGE   := conreality/devbox
VERSION := $(shell cat VERSION)
SOURCES := $(wildcard .docker/* etc/* home/admin/* home/admin/*/* usr/local/*/*)

all: build

.built: Dockerfile $(SOURCES)
	$(DOCKER) build -t $(IMAGE) -f $< .
	@touch $@

dist.tar.xz: .built
	$(DOCKER) save $(IMAGE) | $(XZ) -1 > $@

build: .built

check:
	@echo "not implemented" && false # TODO

dist: dist.tar.xz

install: .built

uninstall:
	$(DOCKER) image rm $(IMAGE) || true

clean:
	@rm -f .built *~

distclean: clean

mostlyclean: clean

boot: .built
	$(DOCKER) run --rm -it -p22:22/tcp -p5900:5900/tcp $(IMAGE) init

exec-shell: .built
	$(DOCKER) run --rm -it $(IMAGE) /bin/bash

exec-dropbear: .built
	$(DOCKER) run --rm -it -p22:22/tcp $(IMAGE) dropbear

exec-vnc: .built
	$(DOCKER) run --rm -it -p5900:5900/tcp $(IMAGE) vnc

.PHONY: check uninstall clean distclean mostlyclean
.PHONY: boot exec-shell exec-dropbear exec-vnc
.SECONDARY:
.SUFFIXES:
