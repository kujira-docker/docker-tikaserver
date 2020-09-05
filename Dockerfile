FROM apache/tika:1.24.1-full

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get -y install curl \
    tesseract-ocr-jpn tesseract-ocr-jpn-vert

RUN apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY assets/entrypoint.sh assets/tika-config.template.xml /

HEALTHCHECK CMD curl -f http://0.0.0.0:9998/tika?hc=1 || exit 1
ENTRYPOINT /entrypoint.sh
