FROM ubuntu:bionic
LABEL maintainer="Michael Maffait"

# Install dependencies.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential \
      openssh-server \
      python3-dev \
      python3-pip \
      python3-setuptools \
      python3-wheel \
      systemd && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean


VOLUME ["/sys/fs/cgroup"]

CMD ["/lib/systemd/systemd"]
