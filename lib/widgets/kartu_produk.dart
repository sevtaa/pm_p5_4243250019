import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/produk_model.dart';
import 'tombol_favorit.dart';

class KartuProduk extends StatelessWidget {
  final ProdukModel produk;

  const KartuProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        onTap: () => context.go('/produk/${produk.id}'),
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: Icon(
            Icons.cookie,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        title: Text(
          produk.nama,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              produk.deskripsi,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  produk.harga,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 8),
                Chip(
                  label: Text(
                    produk.kategori,
                    style: const TextStyle(fontSize: 10),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
              ],
            ),
          ],
        ),
        trailing: TombolFavorit(namaProduk: produk.nama),
        isThreeLine: true,
      ),
    );
  }
}
