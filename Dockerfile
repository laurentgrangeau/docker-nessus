FROM ubuntu:trusty

MAINTAINER Laurent Grangeau <laurent.grangeau@gmail.com>

# Set some env variables
ENV NESSUS_VERSION 6.0.3
ENV UBUNTU_VERSION ubuntu1110
ENV ARCH_VERSION amd64

COPY Nessus-${NESSUS_VERSION}-${UBUNTU_VERSION}_${ARCH_VERSION}.deb /Nessus-${NESSUS_VERSION}-${UBUNTU_VERSION}_${ARCH_VERSION}.deb
RUN dpkg -i /Nessus-${NESSUS_VERSION}-${UBUNTU_VERSION}_${ARCH_VERSION}.deb

EXPOSE 8834

ENTRYPOINT ["/opt/nessus/sbin/nessusd"]