# AGENTS.md - Developer & AI Agent Operations Manual for `omarchy-launcher-win11` 🤖

This document is the definitive operational guide for autonomous AI coding agents (Antigravity, Claude, Cursor, OpenAI Codex, OpenHands) operating within this repository.

---

## 🎯 1. System Overview & Core Philosophy

**🪟 Windows 11 Launcher for Android**
> A pure Flutter 3.x desktop simulation environment that transforms your Android phone, tablet, foldable, or browser into an authentic Windows 11 Fluent Mica workstation. Built adhering to the Impeccable design system with frosted acrylic materials, centered taskbar ergonomics, fluid physics-based micro-interactions, and tactile haptic feedback. Experience the launcher directly in your web browser: 👉 [Launch Windows 11 Web Preview](https://apravint.github.io/windows-11-launcher-android/)

### Key Architectural Capabilities
- **Windows Start Button (`⊞`)**: Centered icon cluster with smooth hover and click transitions.
- **Search & Task View**: Dedicated triggers for fuzzy system search and virtual desktop multitasking.
- **Pinned Taskbar Apps**: Instant access to Microsoft Edge, File Explorer, Microsoft Store, and Terminal with running underline indicators.
- **System Tray**: Network telemetry, volume slider, battery gauge, and stacked digital clock with date format.
- **Centered Floating Canvas**: Acrylic Mica backdrop positioned above the taskbar.
- **Instant Search Bar**: Filter through apps, documents, and system settings in real time.

---

## 🏗️ 2. Repository Structure & Directory Map

| Path | Role & Architectural Responsibility |
| :--- | :--- |
| `.github/` | Subsystem directory (.github) |
| `android/` | Native Android Gradle project & wrapper |
| `assets/` | Static media assets, fonts, icons, soundscapes |
| `docs/` | Extended documentation, architectural diagrams, guides |
| `ios/` | Native iOS platform harness |
| `lib/` | Flutter / Dart application components & state |
| `linux/` | Subsystem directory (linux) |
| `macos/` | Subsystem directory (macos) |
| `pubspec.yaml` | Flutter / Dart dependency manifest and asset declarations |
| `test/` | Subsystem directory (test) |
| `web/` | Frontend web application interface and assets |
| `windows/` | Subsystem directory (windows) |

---

## ⚙️ 3. Executable Verification Pipeline

Before marking any task complete, an AI agent **must** run the following verification steps sequentially:

### Tier 1: Sound Null-Safety & Static Analysis
```bash
flutter analyze || dart analyze
```

### Tier 2: Automated Unit & Widget Test Suite
```bash
flutter test
```

### Tier 3: Debug Compilation Check
```bash
flutter build apk --debug --no-pub
```

---

## 🛡️ 4. Architectural Invariants & Non-Negotiable Rules

### Strict Invariants ("Never Do" List):
1. **Sound Null-Safety Invariance:** Never use forced null assertions (`!`) unless mathematically proven non-null. Use safe navigation (`?.`) and fallback defaults (`??`).
2. **Responsive Dimension Invariance:** Never hardcode absolute pixel heights or widths for OLED screens or desktop windows; always leverage `MediaQuery` or `LayoutBuilder`.
3. **Clean Controller Disposal:** Always dispose TextEditingControllers, AnimationControllers, and StreamSubscriptions in `dispose()` to prevent memory leaks.

### Security & Environment Variables:
- All API keys and secrets must be loaded strictly from environment variables.
- Never commit `.env`, `.pem`, token files, or private credentials.

---

## 🤖 5. Autonomous Agent Operational Protocol

When dispatched to resolve an issue, implement a feature, or refactor code in this repo:

1. **Phase 1 — Explore & Plan:**
   - Read this `AGENTS.md` and relevant source files.
   - Check existing tests to establish the baseline.
2. **Phase 2 — Act (Surgical Implementation):**
   - Implement changes with minimal blast radius.
   - Adhere to the established code style and existing conventions.
3. **Phase 3 — Verify:**
   - Run the Tier 1, 2, and 3 verification commands listed above.
   - Ensure all existing and new tests pass cleanly.
4. **Phase 4 — Reflect:**
   - Review `git diff` to confirm zero unintended whitespace or collateral changes.
   - Confirm no untracked scratch files remain.

---
*Maintained by Ayyappa Pravin • Engineered for Antigravity, Claude, Cursor & Modern Autonomous AI Agents.*
