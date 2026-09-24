# tugas_5

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Panduan Singkat

### 1. Deskripsi Projek

Projek ini adalah demonstrasi singkat dari penerapan **navigasi antar Screen** menggunakan konsep **Stack Navigation**.

Terdiri dari 2 page utama:

1. **Screen 1 — Beranda/Katalog**

   * Menampilkan 3 card katalog.
   * Setiap card dapat diklik.
   * Menggunakan `StatelessWidget`.
   * Data katalog ditampilkan menggunakan `ListView`.

2. **Screen 2 — Detail Katalog**

   * Menampilkan detail dari katalog yang dipilih.
   * Menggunakan `StatefulWidget`.
   * Menggunakan layout vertikal dengan `Column`.
   * Memiliki nama katalog, harga, dan deskripsi.
   * Memiliki fitur interaktif untuk menerapkan konsep event dan state.

### 2. Struktur Project

Struktur project yang digunakan:

lib/
├── main.dart
└── screens/
    ├── home_screen.dart
    └── detail_screen.dart

**`main.dart`**
Digunakan sebagai entry point dan untuk running aplikasi Flutter.

**`home_screen.dart`**
Untuk halaman screen 1 yang menampilkan daftar katalog. Halaman ini menggunakan `StatelessWidget` dan menampilkan tiga card menggunakan `ListView`.

**`detail_screen.dart`**
Untuk Screen 2 atau halaman Detail Katalog. Halaman ini menggunakan `StatefulWidget` sehingga dapat menangani perubahan state.

### 3. Alur Aplikasi

Aplikasi
   ↓
Screen 1 - Beranda/Katalog
   ↓
Pilih salah satu Card
   ↓
Navigator.push()
   ↓
Screen 2 - Detail Katalog
   ↓
Interaksi dengan tombol
   ↓
State berubah

User dapat kembali ke Screen 1 menggunakan tombol **Back** yang tersedia pada `AppBar`.

### 4. Tools yang Digunakan

* Flutter
* Dart
* Material Design
* `StatelessWidget`
* `StatefulWidget`
* `ListView`
* `ListTile`
* `Card`
* `Column`
* `Container`
* `AppBar`
* `Navigator.push()`
* `setState()`

### 5. Cara Menjalankan Project

Pastikan Flutter sudah terinstall pada komputer.

Buka terminal pada folder project, kemudian jalankan:

cmd
flutter run

Jika menggunakan emulatorg, aplikasi akan dijalankan di emulator.

### 6. Konsep Navigasi

Navigasi dari Screen 1 ke Screen 2 menggunakan:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetailScreen(),
  ),
);
```

`Navigator.push()` digunakan untuk menambahkan Screen 2 ke dalam navigation stack.

Ketika pengguna menekan tombol Back pada `AppBar`, Screen 2 akan dikeluarkan dari stack sehingga pengguna kembali ke Screen 1.

ciao# Tugas_5_mobile
