# Thermul - Flutter Application

<div align="center">
<url>
  <img src="https://github.com/user-attachments/assets/3110a45c-d9a9-4514-bbb1-bc5849f83894" alt="Institut Teknologi dan Bisnis Bina Sarana Global" width="200"/>
  </div>
<div align="center">
Institut Teknologi dan Bisnis Bina Sarana Global <br>
FAKULTAS TEKNOLOGI INFORMASI & KOMUNIKASI 
<br>
https://global.ac.id
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

  ### Splash Screen
<div align="center">
  <img src="https://github.com/user-attachments/assets/21e8b06e-24a1-439e-a997-8809aa29f83f" alt="Splash Global" width="160"/>
  <img src="https://github.com/user-attachments/assets/f74c7abc-a99a-4b2a-82e4-50511f2a1595" alt="Splash Rio" width="160"/>
  <img src="https://github.com/user-attachments/assets/d3d3d197-db9e-4abe-8fa4-244d0f83e2d6" alt="Splash Reyza" width="160"/>
  <img src="https://github.com/user-attachments/assets/2496d1d1-b87f-4863-96b2-31c429444d4a" alt="Splash Arya" width="160"/>
  <img src="https://github.com/user-attachments/assets/f1394e21-3059-4612-838d-a6b9cf2dd7d6" alt="Splash Abday" width="160"/>  
</div>

### Login Page
<div align="center">
  <img src="https://github.com/user-attachments/assets/28d52d0f-4333-469c-8120-ab3f5fed84d4" width="200"/>
</div>

### Dashboard/Thermal Printer
<div align="center">
  <img src="https://github.com/user-attachments/assets/aab58f03-87cb-4e5d-832e-8b144c49baae" width="200"/>
  <img src="https://github.com/user-attachments/assets/6d89c090-75e4-44a8-8bd1-2cfbd74a8b6e" width="200"/>
</div>

### About/Our Developers
<div align="center">
  <img src="https://github.com/user-attachments/assets/4f3a1ca7-c187-43f6-b41b-de58ed33aa02" width="160"/>
  <img src="https://github.com/user-attachments/assets/644313b0-317f-43dd-bebd-8b0450024f22" width="160"/>
  <img src="https://github.com/user-attachments/assets/bea1cbf3-f629-447c-8e10-f07247923e12" width="160"/>
  <img src="https://github.com/user-attachments/assets/849d0166-1171-4a75-a475-bc54269783bf" width="160"/>
  <img src="https://github.com/user-attachments/assets/b13905a3-6f1c-47df-8ceb-c936188c5507" width="160"/>
</div>

  ### Notification
<p align="center">
  <img src="https://github.com/user-attachments/assets/1ef45620-c7d3-46ca-b3dd-ebabc1d3f100" width="200"/>
  <img src="https://github.com/user-attachments/assets/2d0278f6-adb1-4d22-a06c-fc6b8d9ca233" width="200"/>
  <img src="https://github.com/user-attachments/assets/af6d5e7e-d236-4be6-ae47-184c50eb0046" width="200"/>
</p>

  ### Logout
<p align="center">
  <img src="https://github.com/user-attachments/assets/49ea458a-6689-4d9e-9a54-214d0830a8a1" width="200"/>
  <img src="https://github.com/user-attachments/assets/403e2f21-0567-495e-9712-b448ab715cad" width="200"/>
</p>


## Demo Video

Lihat video demo aplikasi kami untuk melihat semua fitur dalam aksi!

**[Watch Full Demo on YouTube](https://youtu.be/C9uUSYWmhbY?si=Z9qHWDLsEk6JOZpe)**

## Download APK

Download versi terbaru aplikasi Thermul:

### Latest Release
- [**Download APK (48.8 MB)**](https://drive.google.com/drive/u/2/folders/1S309kux33fwypvzE5x-Cy85vYXpXDIII)


**Minimum Requirements:**
- Android 6.0 (API level 23) or higher
- ~50MB free storage space

## Built With

- **[Flutter](https://flutter.dev/)** - UI Framework
- **[Dart](https://dart.dev/)** - Programming Language
- **[Firebase](https://firebase.google.com/)** - Authentication & Firebase Cloud Message
- **[Provider](https://pub.dev/packages/provider)** - State Management
- **[Bluetooth Thermal Printer](https://pub.dev/packages/flutter_bluetooth_printer)** - Flutter Bluetooth Thermal Printer Dependency


## Getting Started

### Prerequisites

Pastikan Anda Memiliki Device:
- Bluetooth Thermal Printer 58MM

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

# Split APK
flutter build apk --release --obfuscate --split-debug-info=./symbols
```

## Project Structure

```
lib/
├── main.dart                 # Entry point
├── app/
│   ├── routes/              # App routing
│   └── themes/              # App themes
├── models/                   # Data models
│   ├── developers.dart
├── screens/                  # UI Screens
│   ├── splash/
│   ├── auth/
│   │   ├── login_screen.dart
│   ├── home/
│   ├── profile/
│   └── settings/
├── widgets/                  # Reusable widgets
├── services/                 # Business logic
│   ├── auth_service.dart
└── utils/                    # Utilities & helpers
```

## App Architecture

<p align="center">
  <img width="1920" height="1080" alt="Screenshot (1)" src="https://github.com/user-attachments/assets/027e98ee-8e42-4e9a-bd98-37225899944f" />
</p>

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

| Name | NIM | Role | Contributions |
|------|-----|------|---------------|
| **Abdul Reyza Ramadhanu** | 1123150072 | Project Lead & Mobile Developer | - Splash screen <br>- Thermal Printer <br>- Profile Screen <br>- Login<br>- Video Editing |
| **Muhammad Abday Abdul Hafidz** | 1123150093 | UI/UX Designer | - Profile screen <br>- Splash screen <br>- Asset Management <br>- Color Palette<br>- Video Editing |
| **Arya Pramudya Akbar** | 1123150004 | Mobile Developer & Application Tester | - Profile Screen <br>- Splash Screen <br>- Notification <br>- Logout |
| **Rio Achyar** | 1123150059 | Full Stack Developer | - Splash screen <br>- Thermal Printer <br>- Profile Screen |


## License

This project is licensed under the GNU General Public License v3.0.

## Acknowledgments

- [Flutter Community](https://flutter.dev/community) - For amazing packages
- [Firebase](https://firebase.google.com/) - For backend services
- [Lottie](https://lottiefiles.com/) - For animations assets
- [Coolors](https://coolors.co/) - For generate color pallete



---

<div align="center">
  <p>Made with by Thermul Team</p>
  <p>© 2026 Thermul. All rights reserved.</p>
</div>
