FROM centos
MAINTAINER Uwe Dauernheim <uwe@dauernheim.net>

RUN yum -y update && \
    yum -y install libguestfs-tools

ENV LIBGUESTFS_BACKEND=direct

ENTRYPOINT ["guestfish"]
