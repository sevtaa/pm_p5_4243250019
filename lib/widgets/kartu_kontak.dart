import 'package:flutter/material.dart';

class KartuKontak extends StatelessWidget {
  const KartuKontak({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.storefront),
            title: Text('Outlet Utama'),
            subtitle: Text('Jl. Merdeka No. 88, Medan'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text('WhatsApp Order'),
            subtitle: Text('+62 812-9900-1122'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Jam Buka'),
            subtitle: Text('Setiap Hari (10:00 - 21:00 WIB)'),
          ),
        ],
      ),
    );
  }
}
