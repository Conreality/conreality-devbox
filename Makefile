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

.PHONY: check uninstall clean distclean mostlyclean
