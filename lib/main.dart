import 'package:flutter/material.dart';

import 'screens/beranda_screen.dart';

void main() => runApp(const MochimeltApp());

class MochimeltApp extends StatelessWidget {
  const MochimeltApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mochimelt Sweet Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pinkAccent,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      home: BerandaScreen(),
    );
  }
}
