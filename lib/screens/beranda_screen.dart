import 'package:flutter/material.dart';

import '../models/produk_model.dart';

class BerandaScreen extends StatelessWidget {
  final bool isDarkMode;
  final Function(bool) onThemeChanged;

  const BerandaScreen({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    final warnaTeks = Theme.of(context).colorScheme.onSurface;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mochimelt Sweet Bar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            tooltip: isDarkMode ? 'Tema Terang' : 'Tema Gelap',
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => onThemeChanged(!isDarkMode),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Mochimelt!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              'Temukan camilan manis favoritmu hari ini.',
              style: TextStyle(fontSize: 14, color: warnaTeks),
            ),

            const SizedBox(height: 24),

            Text(
              'Our Products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: warnaTeks,
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: ListView.builder(
                itemCount: daftarProdukDummy.length,
                itemBuilder: (context, index) {
                  final produk = daftarProdukDummy[index];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          produk.kategori,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 4),

                        Text(
                          produk.nama,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: warnaTeks,
                          ),
                        ),

                        const SizedBox(height: 4),

                        Text(
                          produk.harga,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
