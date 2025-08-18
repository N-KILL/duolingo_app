import 'package:duolingo_app/src/core/theme/app_theme_data.dart';
import 'package:flutter/material.dart';

class AppSectionHeader extends StatelessWidget {
  const AppSectionHeader({super.key, required this.headerColor});
  final AppPalette headerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          color: AppColor.paletteColors[headerColor]![1],
          boxShadow: [
            BoxShadow(
              color: AppColor.paletteColors[headerColor]![0],
              offset: Offset(0, 4),
              blurRadius: 0,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ETAPA 3, SECCIÓN 2',
                      style: TextStyle(
                        color: AppColor.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Haz planes con amigos',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 64,
                width: 2,
                color: AppColor.paletteColors[headerColor]![0],
                margin: const EdgeInsets.symmetric(horizontal: 8),
              ),
              SizedBox(
                height: 48,
                width: 48,
                child: Icon(Icons.notifications, color: AppColor.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
