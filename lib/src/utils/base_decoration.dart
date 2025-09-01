import 'package:flutter/material.dart';


BoxDecoration baseDecoration({required Color color}) {
  return BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: color,
        offset: Offset(0, 4),
      ),
    ],
    borderRadius: BorderRadius.circular(16),
  );
}
