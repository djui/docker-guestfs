FROM ubuntu:15.10
MAINTAINER Uwe Dauernheim <uwe@dauernheim.net>

WORKDIR /root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
          libguestfs-tools \
          qemu-utils \
          linux-image-generic

ENV LIBGUESTFS_BACKEND=direct \
    HOME=/root

ENTRYPOINT ["guestfish"]
