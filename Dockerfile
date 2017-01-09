FROM autodomotalus/base:latest

MAINTAINER Arnault Droz-dit-Busset for Autodomotalus <https://github.com/autodomotalus>

#Base
RUN apt-get update -y
RUN apt-get install -y python-software-properties software-properties-common libfreetype6 libfontconfig build-essential
RUN apt-get upgrade -y


#Java 8
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
