FROM housmart/ruby-tesseract

RUN apt-get update -y && apt-get install -y nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

