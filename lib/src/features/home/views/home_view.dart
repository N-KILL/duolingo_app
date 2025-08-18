import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:duolingo_app/src/commons_widgets/app_button.dart';
import 'package:duolingo_app/src/commons_widgets/app_section_header.dart';
import 'package:duolingo_app/src/core/theme/app_theme_data.dart';
import 'package:duolingo_app/src/features/home/controllers/home_state.dart';
import 'package:duolingo_app/src/features/home/widgets/home_header.dart';
import 'package:duolingo_app/src/features/home/widgets/home_icon_button.dart';
import 'package:duolingo_app/src/utils/icon_type.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final homeState = ref.watch(homeStateProvider);

    return Column(
      children: [
        SizedBox(height: 50),
        HomeHeader(
          flag: homeState.selectedLanguage.flag,
          // TODO(any): Replace with actual level logic or data source.
          level: '1',
        ),
        AppSectionHeader(headerColor: AppPalette.kiwi),
        Flexible(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              children: [
                Center(
                  child: AppIconButton(
                    icon: AppIconType.star,
                    onPressed: () {},
                    buttonColor: AppPalette.kiwi,
                  ),
                ),
                Center(
                  child: AppIconButton(
                    icon: AppIconType.star,
                    onPressed: () {},
                    buttonColor: AppPalette.banana,
                  ),
                ),
                Center(
                  child: AppIconButton(
                    icon: AppIconType.star,
                    onPressed: () {},
                    buttonColor: AppPalette.blueberry,
                  ),
                ),
                Center(
                  child: AppIconButton(
                    icon: AppIconType.star,
                    onPressed: () {},
                    buttonColor: AppPalette.cloud,
                  ),
                ),
                Center(
                  child: AppIconButton(
                    icon: AppIconType.star,
                    onPressed: () {},
                    buttonColor: AppPalette.cocoa,
                  ),
                ),
                Center(
                  child: AppIconButton(
                    icon: AppIconType.star,
                    onPressed: () {},
                    buttonColor: AppPalette.jelly,
                  ),
                ),
                Center(
                  child: AppIconButton(
                    icon: AppIconType.star,
                    onPressed: () {},
                    buttonColor: AppPalette.licorice,
                  ),
                ),
                Center(
                  child: AppIconButton(
                    icon: AppIconType.star,
                    onPressed: () {},
                    buttonColor: AppPalette.pumpkin,
                  ),
                ),
                Center(
                  child: AppIconButton(
                    icon: AppIconType.star,
                    onPressed: () {},
                    buttonColor: AppPalette.raspberry,
                  ),
                ),
                Center(
                  child: AppButton(
                    buttonText: 'CONTINUE',
                    onPressed: () {},
                    buttonColor: AppPalette.kiwi,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
