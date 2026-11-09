import 'package:flutter/material.dart';

import '../models/produk_model.dart';

class DetailProdukScreen extends StatelessWidget {
  final ProdukModel produk;

  const DetailProdukScreen({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(produk.nama)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.pink.shade100,
                child: const Icon(Icons.cookie, size: 60, color: Colors.pink),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              produk.nama,
              style: Theme.of(context).textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Chip(label: Text(produk.kategori)),
            const SizedBox(height: 16),
            Text(
              'Harga: ${produk.harga}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Deskripsi Rasa:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              produk.deskripsi,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Berhasil memesan ${produk.nama}! 🎉'),
                    ),
                  );
                },
                icon: const Icon(Icons.shopping_cart),
                label: const Text('Pesan Sekarang'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
