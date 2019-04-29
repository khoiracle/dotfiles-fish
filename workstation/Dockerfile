# base OS
FROM ubuntu:18.10
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && apt-get upgrade -y && apt-get install -qq -y \
	clang \
	cmake \
	curl \
	gnupg2 \
	htop \
	python3 \
  build-essential \
  ca-certificates \
  git \
  gnupg \
  less \
  lldb \
  locales \
  mosh \
  python \
  python-dev \
  python-pip \
  python3-pip \
  ripgrep \
  software-properties-common \
  tmux \
  tree \
  zip \
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

# neovim
RUN add-apt-repository ppa:neovim-ppa/stable && apt-get update && apt-get install neovim -y

# fish
RUN add-apt-repository ppa:fish-shell/release-3 && apt-get update && apt-get install fish -y
