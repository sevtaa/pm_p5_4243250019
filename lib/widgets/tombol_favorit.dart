import 'package:flutter/material.dart';

class TombolFavorit extends StatefulWidget {
  final String namaProduk;
  const TombolFavorit({super.key, required this.namaProduk});

  @override
  State<TombolFavorit> createState() => _TombolFavoritState();
}

class _TombolFavoritState extends State<TombolFavorit> {
  bool _isFavorit = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isFavorit ? Icons.favorite : Icons.favorite_border,
        color: _isFavorit ? Colors.pinkAccent : null,
      ),
      onPressed: () {
        setState(() {
          _isFavorit = !_isFavorit;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              _isFavorit
                  ? '${widget.namaProduk} ditambahkan ke Favorit ❤️'
                  : '${widget.namaProduk} dihapus dari Favorit',
            ),
            duration: const Duration(seconds: 1),
          ),
        );
      },
    );
  }
}
