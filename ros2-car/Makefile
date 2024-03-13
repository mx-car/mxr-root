PROJECT_NAME = car-ros
PROJECT_DIR = $(shell pwd)
SHELL = /bin/bash
BUILD_TYPE = Debug
include *.mk

all: help

help:
	@echo ""
	@echo "   Help Menu"
	@echo ""
	@echo "   make build            - builds all workspaces in release"
	@echo "   make clean            - removes from workspaces install, build, log"
	@echo "   make clone            - clones the subrepostories needed"
	@echo ""

docker-build:
	cd docker; make build; 

clean-ws00:
	rm -rf ./ws00/install ./ws00/build  ./ws00/log

clean-ws01:
	rm -rf ./ws01/install ./ws01/build  ./ws01/log

clean-ws02:
	rm -rf ./ws02/install ./ws02/build  ./ws02/log

clean-all: clean-ws00 clean-ws01 clean-ws02
	rm -rf ./install ./build  ./log

clean: clean-ws02
	@echo -e "\033[1;32mmake clean-all to clean all workspaces!\033[0m"

delete-packages:
	rm -rf ./ws00/src/*
	rm -rf ./ws01/src/*
	rm -rf ./ws02/src/*

build-all:  build-ws00 build-ws01 build-ws02

build: build-ws02
	@echo -e "\033[1;32mmake clean-all to build all workspaces!\033[0m"

build-ws00: 
	cd ${PROJECT_DIR}/ws00; \
	source ../env.sh; \
	colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release; \

build-ws01: 
	cd ${PROJECT_DIR}/ws01; \
	source ../env.sh; \
	colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release --packages-select Stage --cmake-args -DOpenGL_GL_PREFERENCE=LEGACY; \
	colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release

build-ws02: 
	cd ${PROJECT_DIR}/ws02; \
	source ../env.sh; \
	colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=${BUILD_TYPE}

pull:
	git pull origin
	find . -type d -name .git -exec echo {} \; -exec git --git-dir={} --work-tree=${PROJECT_DIR}/{}/.. pull origin \;
	
status:
	git status -s
	find . -type d -name .git -exec echo {} \; -exec git --git-dir={} --work-tree=${PROJECT_DIR}/{}/.. status -s \;

backup:
	tar  --exclude='ws00/src' --exclude='build*' --exclude='install*' --exclude='kdev' --exclude='log' --exclude='*swp' --exclude='${PROJECT_NAME}*.tar.gz' \
	     -zcvf ./${PROJECT_NAME}_$(shell date +%Y-%m-%d--%H-%M).tar.gz .

backup-exclud-git:
	tar  --exclude='.git' --exclude='ws00/src' --exclude='build*' --exclude='install*' --exclude='kdev' --exclude='log' --exclude='*swp' --exclude='${PROJECT_NAME}*.tar.gz' \
	     -zcvf ./${PROJECT_NAME}_$(shell date +%Y-%m-%d--%H-%M).tar.gz .