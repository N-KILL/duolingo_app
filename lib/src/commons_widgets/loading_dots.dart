import 'dart:async';
import 'package:flutter/material.dart';

class LoadingDots extends StatefulWidget {
  const LoadingDots({super.key});

  @override
  State<LoadingDots> createState() => _LoadingDotsState();
}

class _LoadingDotsState extends State<LoadingDots> {
  /// The index of the currently visible dot (0, 1, or 2).
  int _visibleDot = 0;

  /// Timer to handle the animation of the dots.
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    /// Initialize the timer to update the visible dot every 500 milliseconds.
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _visibleDot = (_visibleDot + 1) % 3;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget _buildDot(int index) {
    return AnimatedOpacity(
      /// Animate the opacity change over 300 milliseconds.
      duration: const Duration(milliseconds: 300),

      // Change the opacity based on whether this dot is the visible one.
      opacity: _visibleDot == index ? 1.0 : 0.2,

      /// A dot is represented by a Text widget with a large font size.
      child: const Text(
        ".",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Cargando", style: TextStyle(fontSize: 28)),
        const SizedBox(width: 4),
        _buildDot(0),
        _buildDot(1),
        _buildDot(2),
      ],
    );
  }
}
