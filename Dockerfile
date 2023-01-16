FROM ubuntu:22.04 AS release

MAINTAINER Vlad Amelin
WORKDIR svace

# Make the "en_US.UTF-8" locale
RUN apt-get -y update && apt-get install -y tzdata

ENV TZ=Russia/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY svace-3.3.2-x64-linux.tar.bz2 .


RUN apt update
RUN apt-get -y install bzip2 git make g++
RUN tar -xjf svace-3.3.2-x64-linux.tar.bz2

# project
RUN git clone --depth=1 --single-branch https://github.com/zeux/pugixml.git
RUN ulimit -c unlimited

#ENV JAVA_OPTS='jdk.lang.Process.launchMechanism=vfork'
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/

#RUN apt-get update && \
#  apt-get install -y openjdk-11-jdk
#RUN apt install -y vim dotnet6 dotnet-runtime-6.0 curl

#RUN tar -xjf svace-3.3.2-x64-linux.tar.bz2
#RUN dotnet new console