# Thermul - Flutter Application

<div align="center">
<url>
  <img src="https://github.com/user-attachments/assets/3110a45c-d9a9-4514-bbb1-bc5849f83894" alt="Institut Teknologi dan Bisnis Bina Sarana Global" width="200"/>
  </div>
<div align="center">
Institut Teknologi dan Bisnis Bina Sarana Global <br>
FAKULTAS TEKNOLOGI INFORMASI & KOMUNIKASI 
<br>
https://global.ac.id/
  </div>

  ##  Project UAS
  - Mata Kuliah : Aplikasi Mobile
  - Kelas : TI 23 SE 1 
  - Semester : GANJIL 
  - Tahun Akademik: 2025 - 2026 
  
  

## About The Project

Thermul (Thermal Utility) adalah aplikasi mobile berbasis Flutter yang dirancang untuk membantu proses pencetakan menggunakan thermal printer. Aplikasi ini mengimplementasikan autentikasi pengguna, antarmuka terstruktur, serta fitur pendukung untuk kebutuhan aplikasi kasir atau utilitas cetak.

### Key Features

- **Modern & Liquid Glass UI/UX Design** - Antarmuka yang clean dan user-friendly
- **Login**
- **Logout**
- **Print Receipt** - Cetak Struk
- **Notification** - Pemberitahuan

## Screenshots

<div align="center">
  <img src="screenshots/splash_screen.png" alt="Splash Screen" width="200"/>
  <img src="screenshots/login_screen.png" alt="Login" width="200"/>
  <img src="screenshots/home_screen.png" alt="Home" width="200"/>
  <img src="screenshots/profile_screen.png" alt="Profile" width="200"/>
</div>

<div align="center">
  <img src="screenshots/note_detail.png" alt="Note Detail" width="200"/>
  <img src="screenshots/search.png" alt="Search" width="200"/>
  <img src="screenshots/category.png" alt="Category" width="200"/>
  <img src="screenshots/settings.png" alt="Settings" width="200"/>
</div>

## Demo Video

Lihat video demo aplikasi kami untuk melihat semua fitur dalam aksi!

**[Watch Full Demo on YouTube](https://youtube.com/watch?v=dQw4w9WgXcQ)**

Alternative link: **[Google Drive Demo](https://drive.google.com/file/d/1234567890/view)**

## Download APK

Download versi terbaru aplikasi Notes App:

### Latest Release
- [**Download APK (15.2 MB)**](https://github.com/yourusername/notes-app/releases/download/v1.0.0/notes-app-v1.0.0.apk)


**Minimum Requirements:**
- Android 6.0 (API level 23) or higher
- ~20MB free storage space

## Built With

- **[Flutter](https://flutter.dev/)** - UI Framework
- **[Dart](https://dart.dev/)** - Programming Language
- **[Firebase](https://firebase.google.com/)** - Backend & Authentication
- **[SQLite](https://www.sqlite.org/)** - Local Database
- **[Provider](https://pub.dev/packages/provider)** - State Management


## Getting Started

### Prerequisites

Pastikan Anda sudah menginstall:
- Flutter SDK (3.16.0 or higher)
- Dart SDK (3.2.0 or higher)
- Android Studio / VS Code
- Git

### Installation

1. Clone repository
```bash
git clone https://github.com/AbdulReyza/kelompok_2.git
cd kelompok_2
```

2. Install dependencies
```bash
flutter pub get
```

3. Setup Firebase
```bash
# Download google-services.json dari Firebase Console
# Place in android/app/
cp path/to/google-services.json android/app/
```

4. Run aplikasi
```bash
flutter run
```

### Build APK

```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# Split APK by ABI
flutter build apk --split-per-abi
```

## Project Structure

```
lib/
├── main.dart                 # Entry point
├── app/
│   ├── routes/              # App routing
│   └── themes/              # App themes
├── models/                   # Data models
│   ├── user.dart
│   └── category.dart
├── screens/                  # UI Screens
│   ├── splash/
│   ├── auth/
│   │   ├── login_screen.dart
│   │   └── register_screen.dart
│   ├── home/
│   ├── profile/
│   └── settings/
├── widgets/                  # Reusable widgets
├── services/                 # Business logic
│   ├── auth_service.dart
│   ├── database_service.dart
│   └── notification_service.dart
└── utils/                    # Utilities & helpers
```

## Authentication Flow

```
1. Splash Screen (Auto-login check)
   ↓
2. Login Screen / Register Screen
   ↓
3. Home Screen (Dashboard)
   ↓
4. Profile, Notification & Settings
```

### Development Workflow

1. Fork repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'prefix: Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

## Team Members & Contributions

### Development Team

| Name | Role | Contributions |
|------|------|---------------|
| ** ** |  | - <br>- <br>- <br>-  |
| ** ** |  | - <br>- <br>- <br>-  |
| **Rio Achyar** | Full Stack Developer | - Splash screen<br>- Thermal Printer<br>- Profile Screen |
| ** ** | Mobile Developer | - <br>-  <br>- <br>-  |


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.



## Acknowledgments

- [Flutter Community](https://flutter.dev/community) - For amazing packages
- [Firebase](https://firebase.google.com/) - For backend services
- [Flaticon](https://www.flaticon.com/) - For app icons
- [Coolors](https://coolors.co/) - For Generate Color Pallete



---

<div align="center">
  <p>Made with by Thermul Team</p>
  <p>© 2026 Thermul. All rights reserved.</p>
</div>
