# install 1password
FROM ubuntu:18.10 as onepassword_builder
RUN apt-get update && apt-get install -y curl ca-certificates unzip
RUN curl -sS -o 1password.zip https://cache.agilebits.com/dist/1P/op/pkg/v0.5.5/op_linux_amd64_v0.5.5.zip && unzip 1password.zip op -d /usr/bin &&  rm 1password.zip

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
  openssh-server \
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
RUN chsh -s /usr/bin/fish

# tmux
ENV TERM screen-256color

# ssh
RUN mkdir /run/sshd
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN sed 's/#Port 22/Port 2222/' -i /etc/ssh/sshd_config

RUN mkdir ~/.ssh && curl -fsL https://github.com/khoi.keys > ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys

# 1Password
COPY --from=onepassword_builder /usr/bin/op /usr/local/bin/

EXPOSE 2222
