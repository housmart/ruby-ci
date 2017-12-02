FROM housmart/ruby-tesseract-docker

RUN apt-get update -y && apt-get install -y nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
