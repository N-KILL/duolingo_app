import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Slide in transition for page navigation
CustomTransitionPage<dynamic> slideTransition({
  required LocalKey key,
  required Widget child,
  required Offset beginOffset,
}) {
  return CustomTransitionPage(
    key: key,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.easeInOut;
      final tween = Tween(
        begin: beginOffset,
        end: Offset.zero,
      ).chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}
