## 📋 Summary of Changes

A clear and concise description of what this pull request modifies, fixes, or adds to the Lavalink node infrastructure.

---

## 🎯 Type of Change

- [ ] 🐛 Bug fix (non-breaking change which resolves track loading or connectivity issues)
- [ ] ✨ Feature / Plugin enhancement (adding or updating sources: YouTube, LavaSrc, SponsorBlock)
- [ ] ⚙️ Configuration update (`application.yml`, dynamic port binding, environment schema)
- [ ] 📝 Documentation update (`README.md`, changelog, guidelines)
- [ ] 🔒 Security fix (token isolation, credential hardening)

---

## 🔗 Related Issues / Discussions

Closes #
Related to: [WORD DEVS Discord](https://discord.gg/smp7hwrXr4)

---

## 🧪 Pre-Merge Verification Checklist

- [ ] **Zero Secrets Exposure**: Verified that no active `.env`, actual tokens (YouTube OAuth, Spotify secrets), or populated `cookies.json` are present.
- [ ] **Port Fallback Integrity**: The dynamic container binding `${SERVER_PORT:${LAVALINK_PORT:8117}}` remains intact.
- [ ] **Node Boot Validation**: Tested locally or on container; Lavalink outputs `Lavalink is ready to accept connections.`
- [ ] **Line Endings**: Preserved `LF` for Unix scripts/YAML and `CRLF` for `.bat` launchers as defined in `.gitattributes`.
- [ ] **Changelog**: Documented notable modifications under the `[Unreleased]` section of `CHANGELOG.md`.
