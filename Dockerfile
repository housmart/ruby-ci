FROM ruby:2.6.6

ARG RAILS_ENV
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev apt-utils default-mysql-client && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -y nodejs jq && \
    npm install -g n && \
    n 12 && \
    npm install -g yarn && \
    apt-get install -y python-dev && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    pip install awscli && \
    rm -f get-pip.py
