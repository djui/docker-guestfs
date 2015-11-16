FROM centos
MAINTAINER Uwe Dauernheim <uwe@dauernheim.net>

RUN yum -y update && \
    yum -y install libguestfs-tools

ENTRYPOINT ["guestfish"]
