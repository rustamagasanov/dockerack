FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install ruby
RUN gem install rack

ADD app /tmp

CMD rackup /tmp/config.ru --host 0.0.0.0
