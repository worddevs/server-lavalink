<div align="center">

  <img src="https://i.imgur.com/6abgbiI.png" alt="WORD DEVS Lavalink Banner" width="100%" />

# 🎵 WORD DEVS • Lavalink Node

**High-performance, production-ready audio routing gateway designed for Discord music bots.**

[![Lavalink Version](https://img.shields.io/badge/Lavalink-v4.2.2-0052CC?style=for-the-badge&logo=spring&logoColor=white)](https://github.com/lavalink-devs/Lavalink/releases/tag/4.2.2)
[![Java Runtime](https://img.shields.io/badge/Java-21%2B%20%7C%2025-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)](https://openjdk.org/)
[![GitHub Organization](https://img.shields.io/badge/GitHub-WORD--DEVS-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/worddevs)
[![Discord Community](https://img.shields.io/badge/Discord-Join%20Community-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://invites.worddevs.dev/invite/discord)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

</div>

---

## ⚡ Overview

This repository hosts the standardized audio routing infrastructure maintained by **WORD DEVS**. Powered by **Lavalink v4.2.2**, it provides resilient streaming infrastructure designed to bypass bot restrictions and supply audio connections to Discord clients like **Kiwi Chan**.

### 🌟 Key Features

- **YouTube Source Support**: Powered by `youtube-plugin` (v1.18.2) featuring persistent OAuth2 authentication and Proof of Origin (PoToken / VisitorData) verification.
- **LavaSrc Integration**: Seamless Spotify track, album, and playlist resolution via ISRC routing.
- **SponsorBlock Automation**: Native skipping of non-music passages, intros, outros, and promotional segments.
- **Pterodactyl Ready**: Direct container variable binding through dynamic port mapping (`${SERVER_PORT}`).
- **Native Network Acceleration**: Real-time Opus frame delivery powered by `udpqueue` Linux binaries.

---

## 🌐 Public Node Connection

You can connect your Discord bot directly to our live Lavalink node using the parameters below:

| Parameter        | Configuration Value                   |
| :--------------- | :------------------------------------ |
| **Host**         | `lava.worddevs.dev`                   |
| **Port**         | `8117`                                |
| **Secure (SSL)** | `true`                                |
| **Password**     | _Restricted (See instructions below)_ |

### 🔐 How to Get the Password

To obtain the current node password:

1. Follow the official GitHub organization: **[@worddevs](https://github.com/worddevs)**
2. Join our Discord community: **[𝐖𝐨𝐫𝐝 𝐃𝐞𝐯𝐬 ✨](https://invites.worddevs.dev/invite/discord)**
3. Head over to the designated infrastructure channel or request developer role access.

---

## ⚙️ Environment Configuration

If you are self-hosting this node, duplicate `.env.example` to configure your credentials:

```bash
cp .env.example .env
```

| Environment Variable            | Description                                 | Default / Format   |
| ------------------------------- | ------------------------------------------- | ------------------ |
| `SERVER_PORT` / `LAVALINK_PORT` | Container and fallback listener port        | `8117`             |
| `LAVALINK_ADDRESS`              | Network binding interface                   | `0.0.0.0`          |
| `LAVALINK_PASSWORD`             | Node authentication secret header           | `mysparkedserver`  |
| `YOUTUBE_REFRESH_TOKEN`         | OAuth2 Google account session refresh token | `1//0h...`         |
| `YOUTUBE_SKIP_INIT`             | Bypass runtime terminal auth prompts        | `fallse`           |
| `YOUTUBE_PO_TOKEN`              | Proof of Origin token                       | String token       |
| `YOUTUBE_VISITOR_DATA`          | Proof of Origin visitor tracking string     | String token       |
| `SPOTIFY_CLIENT_ID`             | Spotify Developer application client ID     | Hexadecimal string |
| `SPOTIFY_CLIENT_SECRET`         | Spotify Developer application client secret | Hexadecimal string |
| `SPOTIFY_COUNTRY_CODE`          | Regional marketplace for track matching     | `US`               |

---

## 🚀 Deployment

### 🪟 Windows (Local Development)

Execute the launcher script from PowerShell or Command Prompt:

```cmd
.\Scripts\startServer.bat

```

### 🐧 Linux / Hosting Panels (Sparked Host / Pterodactyl)

1. Ensure the startup command is set to:

```bash
java -jar Lavalink.jar

```

2. Upload the required jars, `application.yml`, and `Config/cookies.json` to the container root.
3. Import environment secrets via the panel's **Variables** tab or upload `.env`.
4. Start the server from the console.

## 🤝 Community & Support

- **Discord Community**: [Join the 𝐖𝐨𝐫𝐝 𝐃𝐞𝐯𝐬 ✨ Discord](https://invites.worddevs.dev/invite/discord)
- **GitHub Organization**: [Follow @worddevs](https://www.google.com/url?sa=E&source=gmail&q=https://github.com/worddevs)
- **Issue Tracker**: Report crashes or plugin bugs via [GitHub Issues](https://www.google.com/search?q=https://github.com/worddevs/server-lavalink/issues)
- **Contribution Guidelines**: Review [CONTRIBUTING.md](CONTRIBUTING.md) prior to opening pull requests

---

## 📄 License

This repository is distributed under the [MIT License](https://www.google.com/search?q=LICENSE) © 2026 **WORD DEVS**.
