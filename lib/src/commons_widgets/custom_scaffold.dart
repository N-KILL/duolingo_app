import 'package:duolingo_app/src/core/theme/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// TODO(any): Adapt this to duolingo_app's theme and navigation structure.

/// Enum representing the items in the custom bottom navigation bar.
/// Each item corresponds to a specific route in the application.
enum CustomNavBarItem { home, cuenta, misPartidos, configuracion }

/// A base scaffold widget that provides a custom layout for the app.
/// It takes a [navigationShell] widget that will be displayed as the main
/// content.
class CustomScaffold extends StatefulWidget {
  const CustomScaffold({super.key, required this.navigationShell});

  final Widget navigationShell;

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  int _currentIndex = 0;

  /// Handles the tap event on the bottom navigation bar.
  /// It updates the current index and navigates to the corresponding route.
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    switch (CustomNavBarItem.values[index]) {
      case CustomNavBarItem.home:
        context.go('/home');
        break;
      case CustomNavBarItem.cuenta:
        context.go('/profile');
        break;
      case CustomNavBarItem.misPartidos:
        context.go('/matches');
        break;
      case CustomNavBarItem.configuracion:
        context.go('/config');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: AppColor.grey, width: 2)),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColor.greyBg,
          currentIndex: _currentIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: widget.navigationShell,
      ),
    );
  }
}
