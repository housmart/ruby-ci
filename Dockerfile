FROM housmart/ruby-tesseract

RUN apt-get update -y && \
    apt-get install -y nodejs \
    npm \
    python-dev && \
    ln -s /usr/bin/nodejs /usr/bin/node && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip install awscli

