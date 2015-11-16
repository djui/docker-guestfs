FROM ubuntu
MAINTAINER Uwe Dauernheim <uwe@dauernheim.net>

RUN apt-get update && \
    apt-get install --no-install-recommends -y libguestfs-tools

ENTRYPOINT ["guestfish"]
