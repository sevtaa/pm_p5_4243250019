# Tugas Rutin 5 – Indikator Halaman Menu UMKM Mochimelt Sweet Bar

## A. Identitas Mahasiswa

| **Keterangan** | **Identitas** |
|---|---|
| Nama | Sevta Simamora |
| NIM | 4243250019 |
| Kelas | PSIK 24C |
| Mata Kuliah | Pemrograman Mobile |
| Tugas | Tugas Rutin 5 |
| Judul Aplikasi | Mochimelt Sweet Bar |

## B. Deskripsi Aplikasi

**Mochimelt Sweet Bar** merupakan aplikasi halaman menu UMKM kuliner berbasis Flutter yang dikembangkan untuk menampilkan informasi toko dan berbagai produk yang ditawarkan. Aplikasi ini dirancang dengan tampilan yang menarik dan sederhana sehingga pengguna dapat melihat informasi toko, daftar produk, serta detail produk yang tersedia.

Aplikasi ini menggunakan bahasa pemrograman Dart dan framework Flutter dengan penerapan Material Design 3. Selain itu, aplikasi mendukung tema terang dan gelap yang dapat menyesuaikan pengaturan tema pada perangkat pengguna.

### Fitur Aplikasi

- Menampilkan halaman utama Mochimelt Sweet Bar.
- Menampilkan informasi dan identitas toko.
- Menampilkan informasi kontak toko.
- Menampilkan daftar produk beserta informasi produk.
- Menampilkan halaman detail produk.
- Menyediakan tombol favorit pada produk.
- Menggunakan Material Design 3.

## C. Struktur Folder Proyek

Struktur folder aplikasi Mochimelt Sweet Bar dibuat dengan memisahkan model data, halaman aplikasi, dan komponen widget agar kode lebih terorganisasi.

```text
pm_p5_4243250019/
│
├── lib/
│   ├── models/
│   │   └── produk_model.dart
│   │
│   ├── screens/
│   │   ├── beranda_screen.dart
│   │   └── detail_produk_screen.dart
│   │
│   ├── widgets/
│   │   ├── header_toko.dart
│   │   ├── kartu_kontak.dart
│   │   ├── kartu_produk.dart
│   │   └── tombol_favorit.dart
│   │
│   └── main.dart
│
├── test/
├── pubspec.yaml
└── README.md
```

**Keterangan:**

- `models/produk_model.dart`: Menyimpan struktur data produk yang digunakan dalam aplikasi.
- `screens/beranda_screen.dart`: Mengatur tampilan halaman utama aplikasi.
- `screens/detail_produk_screen.dart`: Menampilkan informasi detail produk.
- `widgets/header_toko.dart`: Menampilkan bagian identitas dan header toko.
- `widgets/kartu_kontak.dart`: Menampilkan informasi kontak toko.
- `widgets/kartu_produk.dart`: Menampilkan produk dalam bentuk kartu.
- `widgets/tombol_favorit.dart`: Menyediakan tombol untuk menandai produk sebagai favorit.
- `main.dart`: Menjadi titik awal aplikasi dan mengatur konfigurasi utama, tema, serta halaman pertama.

## D. Tangkapan Layar Aplikasi

### 1. Tampilan Halaman Utama

![Halaman Utama Mochimelt Sweet Bar](screenshots/halaman-utama.png)

### 2. Tampilan Daftar Produk

![Daftar Produk Mochimelt Sweet Bar](screenshots/daftar-produk.png)

### 3. Tampilan Detail Produk

![Detail Produk Mochimelt Sweet Bar](screenshots/detail-produk.png)



## E. Diagram Widget Tree

Widget Tree menggambarkan struktur hierarki widget yang digunakan dalam aplikasi Mochimelt Sweet Bar. Berdasarkan konfigurasi utama pada `main.dart` dan pembagian komponen proyek, struktur aplikasi dapat digambarkan sebagai berikut.

```text
MochimeltApp (StatelessWidget)
│
└── MaterialApp
    │
    ├── ThemeData (Light Theme)
    ├── ThemeData (Dark Theme)
    │
    └── BerandaScreen
        │
        └── Scaffold
            │
            ├── AppBar
            │
            └── Body
                │
                └── HeaderToko
                │
                ├── KartuKontak
                │
                └── Daftar Produk
                    │
                    └── KartuProduk
                        │
                        └── TombolFavorit

DetailProdukScreen
│
└── Scaffold
    │
    └── Detail Informasi Produk
```

**Keterangan:**

- **MochimeltApp:** Widget utama yang mengatur konfigurasi aplikasi.
- **MaterialApp:** Mengatur judul aplikasi, tema, dan halaman utama.
- **ThemeData:** Mengatur tampilan tema terang dan gelap.
- **BerandaScreen:** Menjadi halaman utama aplikasi.
- **HeaderToko:** Menampilkan identitas toko.
- **KartuKontak:** Menampilkan informasi kontak toko.
- **KartuProduk:** Menampilkan informasi produk.
- **TombolFavorit:** Mengatur interaksi untuk menandai produk sebagai favorit.
- **DetailProdukScreen:** Menampilkan informasi lebih lengkap mengenai produk yang dipilih.

`ProdukModel` tidak dimasukkan ke dalam Widget Tree karena merupakan kelas model data, bukan widget Flutter.

## F. Penjelasan Arsitektur Flutter

Flutter memiliki tiga struktur pohon utama yang saling berhubungan dalam proses pembangunan tampilan aplikasi, yaitu Widget Tree, Element Tree, dan RenderObject Tree.

### 1. Widget Tree

Widget Tree merupakan struktur hierarki yang menggambarkan hubungan antarwidget dalam aplikasi Flutter. Setiap widget memiliki fungsi masing-masing untuk membentuk tampilan aplikasi.

Pada aplikasi Mochimelt Sweet Bar, struktur dimulai dari MochimeltApp sebagai widget utama, kemudian MaterialApp yang mengatur konfigurasi aplikasi, hingga BerandaScreen sebagai halaman utama. Komponen seperti HeaderToko, KartuKontak, dan KartuProduk digunakan untuk menyusun tampilan halaman.

### 2. Element Tree

Element Tree merupakan struktur yang menghubungkan Widget Tree dengan proses pengelolaan tampilan aplikasi. Element berfungsi mengatur hubungan antarwidget serta mempertahankan kondisi widget selama proses pembangunan ulang tampilan.

Pada aplikasi Mochimelt Sweet Bar, Element Tree membantu Flutter mengelola perubahan tampilan ketika pengguna berinteraksi dengan komponen seperti tombol favorit atau ketika terjadi perubahan state lainnya.

### 3. RenderObject Tree

RenderObject Tree bertanggung jawab terhadap proses pengaturan tata letak dan penggambaran tampilan ke layar. RenderObject mengatur ukuran, posisi, jarak, serta cara setiap komponen ditampilkan.

Pada aplikasi Mochimelt Sweet Bar, RenderObject membantu mengatur posisi gambar produk, teks, kartu menu, tombol, dan komponen lainnya agar tampil dengan rapi.

### Alasan Pemilihan StatelessWidget dan StatefulWidget

**StatelessWidget**

StatelessWidget digunakan untuk komponen yang tidak membutuhkan perubahan state internal. Pada aplikasi Mochimelt Sweet Bar, MochimeltApp menggunakan StatelessWidget karena hanya mengatur konfigurasi utama aplikasi, seperti judul, tema, dan halaman awal.

Komponen seperti HeaderToko dan KartuKontak juga cocok menggunakan StatelessWidget karena berfungsi menampilkan informasi toko.

**StatefulWidget**

StatefulWidget digunakan untuk komponen yang membutuhkan perubahan state selama aplikasi berjalan. Pada aplikasi Mochimelt Sweet Bar, tombol favorit dapat menggunakan StatefulWidget apabila status favorit dikelola secara internal dan berubah ketika pengguna menekan tombol.

Dengan pemisahan kedua jenis widget tersebut, pengelolaan tampilan dan interaksi aplikasi menjadi lebih terstruktur serta mudah dikembangkan.

## G. Pengujian Aplikasi

Pengujian dilakukan untuk memastikan aplikasi Mochimelt Sweet Bar dapat berjalan dengan baik melalui browser Google Chrome.

## H. Pernyataan Penggunaan AI

Dalam pengerjaan tugas ini, AI digunakan sebagai alat bantu untuk memahami konsep pengembangan aplikasi Flutter serta membantu penyusunan dokumentasi README.md.

Implementasi kode program, penyesuaian tampilan, dan pengujian aplikasi dilakukan serta diperiksa kembali oleh mahasiswa.

---

**Repository:** `pm_p5_4243250019`

**Nama Aplikasi:** Mochimelt Sweet Bar

**Teknologi:** Flutter, Dart, Material Design 3

**Platform Pengujian:** Google Chrome