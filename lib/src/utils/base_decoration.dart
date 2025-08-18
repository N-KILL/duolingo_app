import 'package:flutter/material.dart';


BoxDecoration baseDecoration({required Color color}) {
  return BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: color,
        offset: Offset(0, 4),
        blurRadius: 0,
        spreadRadius: 0,
      ),
    ],
    borderRadius: BorderRadius.circular(16),
  );
}
