import 'package:duolingo_app/src/core/theme/app_theme_data.dart';
import 'package:duolingo_app/src/utils/base_decoration.dart';
import 'package:flutter/material.dart';

/// A custom button widget that uses a rounded rectangle design with a shadow.
/// This button is the main button used in various parts of the app.
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonColor,
  });

  final String buttonText;
  final VoidCallback onPressed;
  final AppPalette buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 343,
      decoration: baseDecoration(
        color: AppColor.paletteColors[buttonColor]![0],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.paletteColors[buttonColor]![1],
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
