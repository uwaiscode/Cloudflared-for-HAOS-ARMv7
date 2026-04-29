#!/usr/bin/env bashio

# Load bashio library secara manual
source /usr/lib/bashio/bashio.sh

# Sekarang bashio sudah bisa digunakan
TOKEN=$(bashio::config 'token')

if [ -z "$TOKEN" ] || [ "$TOKEN" == "null" ]; then
    bashio::log.error "--------------------------------------------------------"
    bashio::log.error " ERROR: Cloudflare Tunnel Token is missing!"
    bashio::log.error " Please go to the Configuration tab and paste your token."
    bashio::log.error "--------------------------------------------------------"
    exit 1
fi

bashio::log.info "Initializing Cloudflare Tunnel for ARMv7..."
bashio::log.info "Connecting to Cloudflare Edge..."

# Menjalankan cloudflared
exec /usr/local/bin/cloudflared tunnel --no-autoupdate run --token "$TOKEN"
