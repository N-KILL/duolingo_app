import 'package:flutter/material.dart';

/// Widget to display the user's flag and level
/// This widget shows the flag emoji of the selected language and the user's level.
class UserFlagAndLevel extends StatelessWidget {
  const UserFlagAndLevel({super.key, required this.level});

  // User level on this language
  final String level;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Row(
        children: [
          Image.asset('assets/flags/usa_flag.png', width: 25, height: 25),
          Spacer(),
          Text(level, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
