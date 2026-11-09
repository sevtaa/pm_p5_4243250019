import 'package:flutter/material.dart';

import '../models/produk_model.dart';
import '../widgets/header_toko.dart';
import '../widgets/kartu_kontak.dart';
import '../widgets/kartu_produk.dart';

class BerandaScreen extends StatelessWidget {
  BerandaScreen({super.key});

  final List<ProdukModel> daftarMenu = [
    ProdukModel(
      nama: 'Ichigo Daifuku Mochi',
      harga: 'Rp 15.000',
      kategori: 'Signature Mochi',
      deskripsi: 'Mochi lembut dengan isi pasta cokelat & buah stroberi utuh.',
    ),
    ProdukModel(
      nama: 'Matcha Boba Mochi Bites',
      harga: 'Rp 18.000',
      kategori: 'Signature Mochi',
      deskripsi: 'Mochi bites dengan saus krim matcha dan boba kenyal.',
    ),
    ProdukModel(
      nama: 'Mango Cream Mille Crepe',
      harga: 'Rp 22.000',
      kategori: 'Sweet Treats',
      deskripsi:
          'Kue lapis berlapis krim murni segar dan potongan manga manis.',
    ),
    ProdukModel(
      nama: 'Soft Baked Red Velvet Cookie',
      harga: 'Rp 12.000',
      kategori: 'Cookies',
      deskripsi: 'Soft cookie hangat dengan lelehan cream cheese di dalamnya.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mochimelt Sweet Bar'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const HeaderToko(
            namaToko: 'Mochimelt Sweet Bar',
            slogan: 'The Softest Bite of Pure Happiness ✨',
          ),
          const KartuKontak(),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Pilihan Menu Terfavorit',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ...daftarMenu.map((item) => KartuProduk(produk: item)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
