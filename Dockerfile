FROM php:7.3-cli

LABEL maintainer="Valentino Lauciani <valentino.lauciani@ingv.it>"

ENV DEBIAN_FRONTEND=noninteractive
ENV INITRD No
ENV FAKE_CHROOT 1

ENV QUAKEML_VERSION_A=https://quake.ethz.ch/quakeml/Documents?action=AttachFile&do=get&target=quakeml-1.2.tgz
ENV QUAKEML_VERSION_B=https://quake.ethz.ch/quakeml/QuakeML2.0?action=AttachFile&do=get&target=quakeml-2.0.tgz

RUN apt-get update \
    && apt-get dist-upgrade -y --no-install-recommends \
    && apt-get install -y \
        vim \
        wget

WORKDIR /opt

RUN wget -O quakeml_a.tgz "${QUAKEML_VERSION_A}" \
    && wget -O quakeml_b.tgz "${QUAKEML_VERSION_B}" \
    && tar -xvzf quakeml_a.tgz \
    && tar -xvzf quakeml_b.tgz \
    && rm -f quakeml_a.tgz \
    && rm -f quakeml_b.tgz

COPY validator.php /opt

CMD [ "php", "./validator.php" ]
