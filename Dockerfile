FROM php:7.3-cli

LABEL maintainer="Valentino Lauciani <valentino.lauciani@ingv.it>"

ENV DEBIAN_FRONTEND=noninteractive
ENV INITRD No
ENV FAKE_CHROOT 1

ENV QUAKEML_VERSION=quakeml-1.2.tgz

RUN apt-get update \
    && apt-get dist-upgrade -y --no-install-recommends \
    && apt-get install -y \
        vim \
        wget

WORKDIR /opt

RUN wget -O ${QUAKEML_VERSION} "https://quake.ethz.ch/quakeml/Documents?action=AttachFile&do=get&target=${QUAKEML_VERSION}"
RUN tar -xvzf ${QUAKEML_VERSION}

COPY . /opt
WORKDIR /opt
CMD [ "php", "./validator.php" ]
