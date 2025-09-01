import 'package:duolingo_app/src/commons_widgets/app_button.dart';
import 'package:duolingo_app/src/core/theme/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
part '../widgets/language_card.dart';

class LanguageSelectionView extends StatefulWidget {
  const LanguageSelectionView({super.key});

  @override
  State<LanguageSelectionView> createState() => _LanguageSelectionViewState();
}

class _LanguageSelectionViewState extends State<LanguageSelectionView> {
  bool buttonEnabled = false;

  void switchButtonEnabled() {
    setState(() {
      buttonEnabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LanguageCard(onTap: () => switchButtonEnabled()),
            SizedBox(height: 16),
            AppButton(
              isEnabled: buttonEnabled,
              buttonText: 'CONTINUAR',
              onPressed: () => context.go('/home'),
              buttonColor: AppPalette.kiwi,
            ),
          ],
        ),
      ),
    );
  }
}
