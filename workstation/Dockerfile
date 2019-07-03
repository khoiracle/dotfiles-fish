# base OS
FROM ubuntu:18.10
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && apt-get upgrade -y 

RUN apt-get install -qq -y \
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
  htop \
  jq \
  less \
  lldb \
  locales \
  mosh \
  openssh-server \
  python \
  python-dev \
  python-pip \
  python3 \
  python3-pip \
  ripgrep \
  software-properties-common \
  tmux \
  tree \
  zip \
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

# ssh
RUN mkdir /run/sshd
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd 
RUN sed 's/#Port 22/Port 2222/' -i /etc/ssh/sshd_config

# neovim
RUN add-apt-repository ppa:neovim-ppa/stable && apt-get install neovim -y

# fish
RUN add-apt-repository ppa:fish-shell/release-3 && apt-get install fish -y
RUN chsh -s /usr/bin/fish

# tmux
ENV TERM screen-256color

# ssh keys
RUN mkdir ~/.ssh && curl -fsL https://github.com/khoi.keys > ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys

EXPOSE 2222 60000-60010/udp

WORKDIR /root
COPY entrypoint.sh /bin/entrypoint.sh
CMD ["/bin/entrypoint.sh"]
