# Contributing to WORD DEVS • Lavalink Node

Thank you for your interest in contributing to the **WORD DEVS Lavalink Node**! We welcome contributions, bug reports, and optimizations to maintain a reliable, high-performance audio routing node for Discord bots.

To ensure consistency, security, and stability across local and production environments, please review and adhere to the following guidelines.

---

## 🔒 Strict Security & Secret Isolation

This repository is publicly accessible. Protecting credentials, tokens, and private infrastructure details is mandatory:

- **Never Commit Active Secrets**: Pull Requests containing `.env` files, populated `cookies.json`, real YouTube OAuth refresh tokens, Spotify application secrets, or real passwords will be rejected immediately.
- **Environment Variable Fallback**: All credentials and runtime configs must use Spring-compliant variable chaining with fallbacks:
  ```yaml
  password: "${LAVALINK_PASSWORD:${PASSWORD:default_fallback}}"
  ```
- **Session Artifacts**: Never commit files such as `oauth-tokens.json` or local session databases generated during runtime.

---

## 🛠️ Development & Testing Workflow

### 1. Prerequisites

- **Java**: OpenJDK 21 LTS (or higher).
- **Environment**: Windows (cmd/PowerShell) or Linux (bash/sh).
- **Network Tooling**: `curl` for REST API route verification.

### 2. Fork and Branching

1. Fork the repository and create a descriptive feature branch:

   ```bash
   git checkout -b feature/plugin-version-upgrade
   ```

2. Duplicate `.env.example` into `.env` to configure your local test credentials:

   ```bash
   cp .env.example .env
   ```

### 3. Running Locally

- **On Windows**:

  ```cmd
  .\Scripts\startServer.bat
  ```

- **On Linux / macOS**:

  ```bash
  chmod +x ./Scripts/startServer.sh
  ./Scripts/startServer.sh
  ```

### 4. Verification Test

Before submitting changes, perform a track load test against the local REST API:

```bash
curl -i -X GET "http://localhost:8117/v4/loadtracks?identifier=ytsearch:Never%20Gonna%20Give%20You%20Up" -H "Authorization: your_password_here"
```

Ensure the response returns an `HTTP/1.1 200 OK` status with `loadType: "search"` or `loadType: "track"`.

---

## 📋 Coding & Configuration Standards

- **YAML Formatting**: Indentation must strictly follow 2 spaces (no tabs).
- **Line Endings**:
  - `LF` for Linux scripts, YAML, JSON, and Markdown files.
  - `CRLF` for Windows `.bat` and `.cmd` scripts.
  - Line ending normalization is strictly enforced via `.gitattributes`.
- **Dynamic Port Injection**: Never hardcode the port in `application.yml`. Always preserve support for Pterodactyl container injection:
  ```yaml
  server:
    port: ${SERVER_PORT:${LAVALINK_PORT:8117}}
  ```

---

## 📦 Submitting Pull Requests

1. Commit your changes with clear, semantic commit messages (e.g., `feat: bump youtube-plugin to 1.18.2`, `fix: handle crlf stripping in startServer.sh`).
2. Update `CHANGELOG.md` under the `[Unreleased]` section detailing what was added, modified, or fixed.
3. Open a Pull Request pointing to the `main` branch of `WORD-DEVS/lavalink-server`.
4. Ensure your PR description includes:
   - Motivation and context for the change.
   - Confirmation of successful local boot and REST validation.
   - Any dependency or plugin compatibility notes.

Thank you for helping keep the **WORD DEVS** infrastructure clean and stable!
