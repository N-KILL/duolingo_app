import 'package:duolingo_app/src/commons_widgets/transitions/slide_transition.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:duolingo_app/src/commons_widgets/custom_scaffold.dart';
import 'package:duolingo_app/src/features/home/home.dart';
import 'package:duolingo_app/src/features/language_selection/language_selection.dart';
import 'package:duolingo_app/src/features/splash_screen/splash_screen.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

/// The main router for the application.
/// It defines the routes and navigation structure of the app.
@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(
        path: '/language_selection',
        pageBuilder: (context, state) {
          return slideTransition(
            key: state.pageKey,
            child: const LanguageSelectionView(),
            beginOffset: const Offset(1, 0), // entra desde la derecha
          );
        },
      ),
      // The main navigation shell that contains the custom scaffold, this are
      // the pages that will be displayed in the bottom navigation bar.
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return CustomScaffold(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeView(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
