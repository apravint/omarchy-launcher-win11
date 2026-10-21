# 🪟 Windows 11 Launcher for Android

[![Flutter CI/CD](https://github.com/apravint/windows-11-launcher-android/actions/workflows/build-and-release.yml/badge.svg)](https://github.com/apravint/windows-11-launcher-android/actions/workflows/build-and-release.yml)
[![Flutter](https://img.shields.io/badge/Flutter-3.47%20%7C%20Dart%203.13-02569B?logo=flutter)](https://flutter.dev)
[![Live Web Demo](https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-brightgreen?logo=googlechrome)](https://apravint.github.io/windows-11-launcher-android/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Android Min SDK](https://img.shields.io/badge/Android-7.0%2B%20(API%2024)-3DDC84?logo=android)](https://developer.android.com)

A **pure Flutter 3.x** desktop simulation environment that transforms your Android phone, tablet, foldable, or browser into an authentic **Windows 11 Fluent Mica** workstation. Built adhering to the **Impeccable** design system with frosted acrylic materials, centered taskbar ergonomics, fluid physics-based micro-interactions, and tactile haptic feedback.

---

## 🌐 Live Interactive Web Demo

Experience the launcher directly in your web browser:
👉 **[Launch Windows 11 Web Preview](https://apravint.github.io/windows-11-launcher-android/)**

---

## ✨ Features & Architecture

### 1. ⊞ Centered Fluent Taskbar
- **Windows Start Button (`⊞`)**: Centered icon cluster with smooth hover and click transitions.
- **Search & Task View**: Dedicated triggers for fuzzy system search and virtual desktop multitasking.
- **Pinned Taskbar Apps**: Instant access to Microsoft Edge, File Explorer, Microsoft Store, and Terminal with running underline indicators.
- **System Tray**: Network telemetry, volume slider, battery gauge, and stacked digital clock with date format.

### 2. 🪟 Fluent Start Menu
- **Centered Floating Canvas**: Acrylic Mica backdrop positioned above the taskbar.
- **Instant Search Bar**: Filter through apps, documents, and system settings in real time.
- **Pinned Applications Grid**: Direct shortcuts to Office (Word, Excel, PowerPoint), Spotify, Settings, Calculator, and Photos.
- **Recommended Files**: Quick history tracking recently edited documents and scripts.
- **User Profile & Power Menu**: Profile card for Ayyappa Pravin and power actions (*Sleep*, *Shut down*, *Restart*).

### 3. ⚙️ Action Center & Quick Settings
- **Quick Toggles Grid**: 1-tap controls for Wi-Fi, Bluetooth, Airplane Mode, Battery Saver, Night Light, and Dark/Light Mode.
- **Interactive Sliders**: Smooth Display Brightness and System Volume audio sliders.
- **Battery Health Telemetry**: Live percentage and estimated battery duration.

### 4. 📁 Windows 11 File Explorer
- **Tabbed Mica Header**: Modern Windows 11 tab interface with window caption controls (*Minimize*, *Maximize*, *Close*).
- **Command Ribbon**: Quick actions (*New*, *Cut*, *Copy*, *Paste*, *Rename*, *Share*, *Delete*, *Sort*, *View*).
- **Breadcrumb Navigation**: Full hierarchical address bar (`This PC > Local Disk (C:) > Projects`).
- **Storage Diagnostics**: Status bar displaying free drive space and item count.

---

## 🛠️ Tech Stack & Dependencies

- **Framework**: Flutter 3.47.7 (Dart 3.13.5)
- **Design System**: Impeccable Design System with Windows 11 Fluent Mica aesthetics
- **Typography**: Google Fonts (`Outfit`)
- **Formatting**: `intl: ^0.20.0`
- **Testing**: 100% pass rate on widget smoke test suite

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) 3.27+
- Android Studio / Android SDK 34+

### Clone & Run
```bash
git clone https://github.com/apravint/windows-11-launcher-android.git
cd windows-11-launcher-android

# Fetch dependencies
flutter pub get

# Run tests
flutter test

# Run on connected Android device or desktop
flutter run

# Build release APK
flutter build apk --release

# Build for Web
flutter build web --release --base-href "/windows-11-launcher-android/"
```

---

## 📄 License

Licensed under the [MIT License](LICENSE).
Created with ❤️ by **Ayyappa Pravin** ([@apravint](https://github.com/apravint)).
