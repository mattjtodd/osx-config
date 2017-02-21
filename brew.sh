#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

set -e && \
  brew update && \
  brew upgrade && \
  brew install coreutils && \
  brew install findutils --with-default-names && \
  brew install Caskroom/cask/iterm2 && \
  brew install Caskroom/cask/google-chrome && \
  brew install Caskroom/cask/docker && \
  brew install zsh zsh-autosuggestions zsh-completions zsh-git-prompt zsh-history-substring-search && \
  brew install vim --with-override-system-vi && \
  brew install wget --with-iri && \
  brew install homebrew/dupes/grep && \
  brew install homebrew/dupes/openssh && \
  brew install homebrew/dupes/screen && \
  brew install nmap && \
  brew install ssh-copy-id && \
  brew install htop && \
  brew install git --with-brewed-openssl --with-brewed-curl && \
  brew install Caskroom/cask/virtualbox && \
  brew install Caskroom/cask/virtualbox-extension-pack && \
  brew install autojump && \
  brew install Caskroom/cask/java && \
  brew install Caskroom/cask/eclipse-jee && \
  brew install scala sbt && \
  brew install Caskroom/cask/intellij-idea && \
  brew install Caskroom/cask/tunnelblick && \
  brew install sshuttle && \
  brew install Caskroom/cask/minikube && \
  brew install kubectl && \
  brew install awscli && \
  brew install tree && \
  brew install terraform && \
  brew install Caskroom/cask/vagrant && \
  brew install Caskroom/cask/vagrant-manager && \
  brew install vagrant-completion && \
  brew install Caskroom/cask/slack
  brew cleanup
