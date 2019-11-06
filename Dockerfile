FROM php:7.3-cli

LABEL maintainer="Valentino Lauciani <valentino.lauciani@ingv.it>"

ENV DEBIAN_FRONTEND=noninteractive
ENV INITRD No
ENV FAKE_CHROOT 1

ENV QUAKEML_VERSION_A=https://quake.ethz.ch/quakeml/Documents?action=AttachFile&do=get&target=quakeml-1.2.tgz

RUN apt-get update \
    && apt-get dist-upgrade -y --no-install-recommends \
    && apt-get install -y \
        vim \
        wget

WORKDIR /opt

RUN wget -O quakeml_a.tgz "${QUAKEML_VERSION_A}" \
    && tar -xvzf quakeml_a.tgz \
    && rm -f quakeml_a.tgz 

COPY validator.php /opt

CMD [ "php", "./validator.php" ]
