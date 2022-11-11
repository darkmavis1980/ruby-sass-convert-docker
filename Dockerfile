FROM ubuntu:20.04

ENV TZ=Europe/Dublin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt install ruby-full rubygems autogen autoconf libtool make -y
RUN gem install sass