import 'package:flutter/material.dart';

import 'package:duolingo_app/src/features/home/widgets/user_flag_and_lvl.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, required this.level});

  /// The level to display in the header
  final String level;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        UserFlagAndLevel(level: level),
        Icon(Icons.language, color: Colors.blue),
        Icon(Icons.language, color: Colors.blue),
        Icon(Icons.language, color: Colors.blue),
      ],
    );
  }
}
