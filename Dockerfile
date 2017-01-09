FROM autodomotalus/base:latest

MAINTAINER Arnault Droz-dit-Busset for Autodomotalus <https://github.com/autodomotalus>

# Base
RUN apt-get install -y python-software-properties software-properties-common build-essential
RUN apt-get upgrade -y

# Install Java 8  
RUN \
  add-apt-repository ppa:webupd8team/java -y && \
  apt-get update && \
  apt-get install oracle-java8-installer -y 

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
