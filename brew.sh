#!/usr/bin/env bash

set -e && \
  brew update && \
  brew upgrade && \
  brew install \
	autoconf \
	bash \
	binutils \
	coreutils \
	curl \
	diffutils \
	ed \
	findutils \
	flex \
	gawk \
	gnu-indent \
	gnu-sed \
	gnu-tar \
	gnu-which \
	gpatch \
	grep \
	gzip \
	jq \
	less \
	m4 \
	make \
	nano \
	screen \
	watch \
	wdiff \
	wget && \
  brew install --cask \
	docker \
        iterm2 \
	zoom && \
  brew cleanup
