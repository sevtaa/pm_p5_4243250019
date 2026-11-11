import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../screens/beranda_screen.dart';
import '../screens/detail_produk_screen.dart';
import '../screens/tentang_screen.dart';
import '../widgets/shell_scaffold.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter createAppRouter({
  required ValueListenable<bool> isDarkMode,
  required ValueChanged<bool> onThemeChanged,
}) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ShellScaffold(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => BerandaScreen(
                  isDarkMode: isDarkMode.value,
                  onThemeChanged: onThemeChanged,
                ),
                routes: [
                  GoRoute(
                    path: 'produk/:id',
                    builder: (context, state) {
                      final id = state.pathParameters['id'] ?? '';
                      return DetailProdukScreen(id: id);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/tentang',
                builder: (context, state) => const TentangScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
