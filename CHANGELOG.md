# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Planned

- Automated health-check heartbeat via Discord webhook.
- Support for YouTube Visitors Data automated rotation script.
- Native Prometheus metrics exporter integration.

---

## [1.0.0] - 2026-09-12

### 🚀 Initial Production Release

Standardized and production-ready **Lavalink v4.2.2** node infrastructure built for **WORD DEVS** Discord bots, featuring persistent OAuth2 streaming authentication, Spotify metadata resolution, and automated sponsor segment skipping.

### Added

- **Core Runtime**: Integrated **Lavalink v4.2.2** running on Java 21 (LTS) with Undertow web server and Koe voice gateway.
- **YouTube Source Provider**: Integrated `dev.lavalink.youtube:youtube-plugin` (`v1.18.2`):
  - Persistent OAuth2 authentication with automated refresh-token lifecycle validation.
  - Native playback routing configured via `WEB_REMIX`, `WEB`, and `TVHTML5` client layers.
  - Proof of Origin (PoToken / VisitorData) parameter bindings to mitigate bot detection and rate limits.
- **LavaSrc Integration**: Integrated `com.github.topi314.lavasrc:lavasrc-plugin` (`v4.8.3`):
  - Spotify audio track, playlist, and album metadata resolution routed via YouTube ISRC matching (`ytsearch:"%ISRC%"`).
  - Dynamic API credentials handling with fallback to configurable market codes.
- **SponsorBlock Integration**: Integrated `com.github.topi314.sponsorblock:sponsorblock-plugin` (`v3.0.1`):
  - Automatic skip routing for sponsor segments, intros, outros, and self-promotion clips.
- **Cross-Platform Launchers**:
  - `Scripts/startServer.bat`: Windows native launcher with automatic `.env` parsing, whitespace sanitization, and quote stripping.
  - `Scripts/startServer.sh`: Linux / POSIX native wrapper with LF normalization and memory-tuned JVM allocation (`-Xms128M -Xmx512M -XX:+UseG1GC`).
- **Cloud & Container Infrastructure**:
  - Pterodactyl / Apollo Panel integration supporting dynamic port injection via `${SERVER_PORT}`.
  - Centralized schema blueprints (`.env.example`) and sample configurations (`applicationExample.yml`).
  - Pre-structured fallback data stores (`Config/cookies.json`).
- **Repository Architecture**:
  - Strict `.gitignore` policy isolating runtime logs, credentials, and volatile binaries.
  - GitHub Linguist rules configured via `.gitattributes` to force YAML language telemetry indexing.

### Security

- Complete decoupling of secrets via prioritized environment variable chaining (`${LAVALINK_PASSWORD:${PASSWORD:default}}`).
- Sanitized public repository footprint to prevent accidental leaks of YouTube OAuth credentials and Spotify application keys.

---

[Unreleased]: https://github.com/WORD-DEVS/lavalink-server/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/WORD-DEVS/lavalink-server/releases/tag/v1.0.0
