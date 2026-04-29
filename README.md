# Cloudflared for HAOS ARMv7

A lightweight **Cloudflare Tunnel (Argo)** add-on specifically optimized for **ARMv7 (32-bit)** architectures. This add-on enables secure remote access to your Home Assistant instance without the need for port forwarding or a public IP, perfect for **Orange Pi One, Raspberry Pi 2/3 (32-bit OS), and Sonoff iHost**.

## 🚀 Features
* **Architecture Specific**: Native binary for `armv7` ensuring stability on 32-bit hardware.
* **Zero Trust Security**: Connects your local services to the Cloudflare edge network securely.
* **Host Network Enabled**: Easily routes traffic to Home Assistant (port 8123) or other local services.
* **Token-based Config**: Simple setup using a single Tunnel Token from the Cloudflare Dashboard.

---

## 🛠️ Installation

1. **Add Repository**:
   * Go to **Settings** > **Add-ons** > **Add-on Store**.
   * Click the three dots (⋮) in the top right and select **Repositories**.
   * Add this URL: `https://github.com/uwaiscode/Cloudflared-for-HAOS-ARMv7`
   * Click **Add** and then **Close**.

2. **Install Add-on**:
   * Search for "Cloudflared Tunnel for ARMv7".
   * Click **Install**.

3. **Configuration**:
   * Go to the **Configuration** tab.
   * Paste your **Tunnel Token** (obtained from the Cloudflare Zero Trust Dashboard).
   * Click **Save**.

4. **Start**:
   * Go back to the **Info** tab and click **Start**.

---

## 📡 Setup Guide (Cloudflare Dashboard)

To get your token and point to your iHost:
1. Open **[Cloudflare Zero Trust Dashboard](https://one.dash.cloudflare.com/)**.
2. Go to **Networks** > **Tunnels** and create a new tunnel.
3. Choose **Cloudflared** as the connector and copy the **Token**.
4. In the **Public Hostname** tab, map your domain (e.g., `home.yourdomain.com`) to:
   * **Service Type**: `HTTP`
   * **URL**: `localhost:8123`

---

## 🛠 Troubleshooting

* **Token Error**: Ensure the token is copied completely without extra spaces.
* **Connection Logs**: Check the add-on logs to see the connection status to Cloudflare edge nodes.
* **Binary Version**: This add-on fetches the latest stable `cloudflared` binary for ARMv7 during the build process.

---

## 👤 Author
**Triyadi (Abu Uwais)** Full-stack Developer & IoT Engineer.

---

## ⚖️ License
This project is licensed under the MIT License.
