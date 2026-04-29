ARG BUILD_FROM=ghcr.io/home-assistant/armv7-base:latest
FROM $BUILD_FROM

ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

RUN apk add --no-cache libc6-compat ca-certificates

RUN wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm -O /usr/local/bin/cloudflared && \
    chmod +x /usr/local/bin/cloudflared

COPY run.sh /
RUN chmod a+x /run.sh

ENTRYPOINT ["/bin/bash", "/run.sh"]
