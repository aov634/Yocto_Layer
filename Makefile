# Makefile for Yocto build

YOCTO_IMAGE ?= core-image-base
BUILD_DIR ?= poky

.PHONY: all build clean

all: build

build:
	cd poky && . ./oe-init-build-env ../poky > /dev/null && bitbake $(YOCTO_IMAGE) && cd build/tmp/deploy/images/raspberrypi3

clean:
	cd poky && . ./oe-init-build-env $(BUILD_DIR) > /dev/null && bitbake -c clean $(YOCTO_IMAGE) && cd ..
