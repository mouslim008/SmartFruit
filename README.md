# 🍎 SmartFruit

> An AI-powered Flutter app that identifies fruits instantly from your camera and answers any fruit-related question through a built-in voice assistant.

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?style=flat-square)
![Dart](https://img.shields.io/badge/Dart-3.x-blue?style=flat-square)
![Firebase](https://img.shields.io/badge/Firebase-Auth%20%2B%20Firestore-orange?style=flat-square)
![TFLite](https://img.shields.io/badge/TensorFlow%20Lite-On--device%20ML-yellow?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)

---

## ✨ Features

- 📷 **AI Fruit Classification** — Identify fruits in real time using TensorFlow Lite (on-device, no internet needed for ML)
- 🎤 **Voice Assistant** — Ask any question about a fruit and get a spoken answer powered by OpenAI GPT
- 🔐 **Authentication** — Secure login and registration via Firebase Auth
- ☁️ **Cloud Storage** — Firestore integration for user data and history
- 🗣 **Speech-to-Text & TTS** — Fully hands-free experience
- 📱 **Multi-platform** — Android, iOS, Web, Windows, macOS

---



## 🛠 Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter 3 / Dart 3 |
| ML Model | TensorFlow Lite (on-device) |
| Backend | Firebase Auth, Firestore, Storage |
| Voice | `speech_to_text` + `flutter_tts` |
| AI Assistant | OpenAI GPT via HTTP |
| Platforms | Android, iOS, Web, Windows, macOS |

---

## 🚀 Quick Start

### Prerequisites
- Flutter 3.0+ — [install guide](https://docs.flutter.dev/get-started/install)
- Dart 3.0+
- A Firebase project — [console.firebase.google.com](https://console.firebase.google.com)
- OpenAI API key (optional — for voice assistant)

### 1. Clone
```bash
git clone https://github.com/YOUR_USERNAME/smartfruit.git
cd smartfruit
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Firebase setup
```bash
# Install Firebase CLI if you haven't
npm install -g firebase-tools

# Login and init
firebase login
flutterfire configure
```
This generates `lib/firebase_options.dart` automatically.

### 4. Add your assets
Place these files in the `assets/` folder:
- `fruit_classifier.tflite` — your TFLite model
- `labels.txt` — fruit label list (one per line)

### 5. Add your OpenAI key (optional)
In your environment or a config file:
```dart
const openAiApiKey = 'sk-...';
```

### 6. Run
```bash
# Android / iOS
flutter run

# Web
flutter run -d chrome

# Windows
flutter run -d windows
```

---

## 📁 Project Structure

```
smartfruit/
├── lib/
│   ├── firebase_options.dart   # Auto-generated Firebase config
│   ├── main.dart               # Entry point
│   ├── screens/
│   │   ├── login_screen.dart
│   │   ├── home_screen.dart
│   │   ├── classification_screen.dart
│   │   └── voice_assistant_screen.dart
│   └── services/
│       ├── ml_service.dart     # TFLite inference
│       ├── voice_service.dart  # STT + TTS
│       └── gpt_service.dart    # OpenAI calls
├── assets/
│   ├── fruit_classifier.tflite
│   └── labels.txt
├── firestore.rules
├── storage.rules
└── pubspec.yaml
```

---

## 🔒 Firestore Rules

Rules are configured in `firestore.rules`. Each user can only read and write their own data.

---

## 🤝 Contributing

Pull requests are welcome. For major changes, open an issue first to discuss what you'd like to change.

---

## 📄 License

MIT — free to use and modify.
