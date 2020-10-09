FROM hexpm/elixir:1.11.0-erlang-22.3.3-ubuntu-focal-20200423

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    apt-get install -y vim && \
    apt-get install -y git && \
    apt-get install -y curl && \
    apt-get install -y wget && \
    apt-get install -y nodejs && \
    apt-get install -y gnupg2 && \
    apt-get install -y rubygems && \
    apt-get install -y zsh && \
    curl -L https://npmjs.org/install.sh | sh

RUN gem install htmlbeautifier

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.0.2/zsh-in-docker.sh)"

ENV MIX_HOME=/root/.mix
ENV HEX_HOME=/root/.hex

RUN mix local.hex --force && \
    mix local.rebar --force
