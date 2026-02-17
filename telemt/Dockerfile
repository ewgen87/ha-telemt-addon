ARG BUILD_FROM=ghcr.io/an0nx/telemt-docker:latest
FROM $BUILD_FROM

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
