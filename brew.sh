#!/usr/bin/env bash

set -e && \
  brew update && \
  brew upgrade && \
  brew install autoconf bash binutils coreutils diffutils ed findutils flex gawk \
    gnu-indent gnu-sed gnu-tar gnu-which gpatch grep gzip less m4 make nano \
    screen watch wdiff wget && brew cleanup
