import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'router/app_router.dart';

void main() {
  runApp(const MochimeltApp());
}

class MochimeltApp extends StatefulWidget {
  const MochimeltApp({super.key});

  @override
  State<MochimeltApp> createState() => _MochimeltAppState();
}

class _MochimeltAppState extends State<MochimeltApp> {
  late final ValueNotifier<bool> _isDarkMode;
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();

    _isDarkMode = ValueNotifier<bool>(false);

    _router = createAppRouter(
      isDarkMode: _isDarkMode,
      onThemeChanged: (value) {
        _isDarkMode.value = value;
      },
    );
  }

  @override
  void dispose() {
    _router.dispose();
    _isDarkMode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isDarkMode,
      builder: (context, isDark, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Mochimelt Sweet Bar',
          routerConfig: _router,
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

          theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.light,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.pinkAccent,
              brightness: Brightness.light,
            ),
            scaffoldBackgroundColor: const Color(0xFFFFF7F8),
            cardColor: Colors.white,
          ),

          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.pinkAccent,
              brightness: Brightness.dark,
            ),
            scaffoldBackgroundColor: const Color(0xFF1E1B20),
            cardColor: const Color(0xFF302A30),
          ),
        );
      },
    );
  }
}
