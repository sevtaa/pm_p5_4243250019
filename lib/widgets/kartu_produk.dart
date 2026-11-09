import 'package:flutter/material.dart';

import '../models/produk_model.dart';
import '../screens/detail_produk_screen.dart'; // Impor halaman detail
import 'tombol_favorit.dart';

class KartuProduk extends StatelessWidget {
  final ProdukModel produk;

  const KartuProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        onTap: () {
          // Navigasi ke halaman detail saat diklik
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailProdukScreen(produk: produk),
            ),
          );
        },
        leading: CircleAvatar(
          backgroundColor: Colors.pink.shade100,
          child: const Icon(Icons.cookie, color: Colors.pink),
        ),
        title: Text(
          produk.nama,
          style: Theme.of(context).textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(produk.deskripsi),
            const SizedBox(height: 4),
            Text(
              produk.harga,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        trailing: TombolFavorit(namaProduk: produk.nama),
        isThreeLine: true,
      ),
    );
  }
}
