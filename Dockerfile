FROM autodomotalus/base:latest

MAINTAINER Arnault Droz-dit-Busset for Autodomotalus <https://github.com/autodomotalus>

# Install Java 8 
RUN \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
