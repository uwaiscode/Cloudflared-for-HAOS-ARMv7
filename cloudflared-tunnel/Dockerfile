ARG BUILD_FROM=ghcr.io/home-assistant/armv7-base:latest
FROM $BUILD_FROM

# Install dependencies
RUN apk add --no-cache libc6-compat ca-certificates

# Download cloudflared binary khusus ARMv7 (32-bit)
RUN wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm -O /usr/local/bin/cloudflared && \
    chmod +x /usr/local/bin/cloudflared

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
