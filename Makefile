DOCKER = docker

IMAGE   := conreality/devbox
VERSION := $(shell cat VERSION)
SOURCES := $(wildcard .docker/* etc/* home/admin/* home/admin/*/* usr/local/*/*)

all: build

.built: Dockerfile $(SOURCES)
	$(DOCKER) build -t $(IMAGE) -f $< .
	@touch $@

build: .built

check:
	@echo "not implemented" && false # TODO

dist:
	@echo "not implemented" && false # TODO

install: build

uninstall:
	$(DOCKER) image rm $(IMAGE) || true

clean:
	@rm -f .built *~

distclean: clean

mostlyclean: clean

.PHONY: check dist uninstall clean distclean mostlyclean
