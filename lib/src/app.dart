import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:duolingo_app/src/core/routes/app_router.dart';
import 'package:duolingo_app/src/core/theme/app_theme_data.dart';

/// The main entry point of the application.
/// It sets the preferred orientations and initializes the MaterialApp with the
/// router and localization support.
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Force the app to run in portrait mode only if its android or IOS,
    // note: App is designed to run on mobile devices only.
    // This will break on web
    if (Platform.isAndroid || Platform.isIOS) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }

    final appRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      theme: lightTheme,
    );
  }
}
