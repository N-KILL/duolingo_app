import 'package:flutter/widgets.dart';

import 'package:duolingo_app/src/utils/use_flags_emoji.dart';

/// Widget to display the user's flag and level
/// This widget shows the flag emoji of the selected language and the user's level.
class UserFlagAndLevel extends StatelessWidget {
  const UserFlagAndLevel({super.key, required this.flag, required this.level});

  // Flag emoji representing the user's selected language
  final String flag;

  // User level on this language
  final String level;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Row(
        children: [
          Text(getFlagEmoji(flag), style: TextStyle(fontSize: 20)),
          Spacer(),
          Text(level, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
