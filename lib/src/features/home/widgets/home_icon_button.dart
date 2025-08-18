import 'package:flutter/material.dart';

import 'package:duolingo_app/src/core/theme/app_theme_data.dart';
import 'package:duolingo_app/src/utils/icon_svg_reader.dart';
import 'package:duolingo_app/src/utils/icon_type.dart';

/// A custom icon button widget that uses a circular design with a shadow.
/// This button is used in the home screen of the app. To select the lvl
class AppIconButton extends StatefulWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = const Size(70, 70),
    required this.buttonColor,
    this.iconColor = AppColor.white,
    this.iconSize = 32,
    this.onLongPressed,
  });

  final AppIconType icon;
  final VoidCallback onPressed;
  final VoidCallback? onLongPressed;
  final Size size;
  final double iconSize;
  final AppPalette buttonColor;
  final Color iconColor;

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  bool _pressed = false;

  void _setPressed(bool value) {
    setState(() {
      _pressed = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    double shadowOffset = _pressed ? 4 : 6;

    return SizedBox(
      width: widget.size.width + 5,
      height: widget.size.height + 5,
      child: GestureDetector(
        onTapDown: (_) => _setPressed(true),
        onTapUp: (_) {
          _setPressed(false);
          widget.onPressed();
        },
        onTapCancel: () => _setPressed(false),
        onLongPressStart: (_) => _setPressed(true),
        onLongPressEnd: (_) {
          _setPressed(false);
          widget.onLongPressed?.call();
        },
        child: Padding(
          padding: EdgeInsets.only(top: _pressed ? 4 : 0),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            width: widget.size.width,
            height: widget.size.height,
            decoration: BoxDecoration(
              color: AppColor.paletteColors[widget.buttonColor]![1],
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColor.paletteColors[widget.buttonColor]![0],
                  offset: Offset(0, shadowOffset),
                  blurRadius: 0,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: _pressed ? 6 : 4,
                    vertical: 4,
                  ),
                  child: CustomPaint(
                    painter: IconButtonShapePainter(
                      buttonColor: widget.buttonColor,
                    ),
                  ),
                ),
                Center(
                  child: svgIcon(
                    getPathOfTheIcon(widget.icon),
                    size: widget.iconSize,
                    color: widget.iconColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Custom painter to draw the shape of the icon button.
/// It uses the colors defined in the AppColor class.
///
/// Note: This is made to match to the default size of the icon button.
/// If you change the size of the icon button, you may need to adjust the path.
///
/// I've created the svg by hand on figma then used this:
/// https://shapemaker.web.app/#/
/// to convert it to a path.
class IconButtonShapePainter extends CustomPainter {
  IconButtonShapePainter({required this.buttonColor});

  final AppPalette buttonColor;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(32.8125, 0);
    path_0.cubicTo(14.6907, 0, 0, 14.6907, 0, 32.8125);
    path_0.cubicTo(0, 38.1782, 1.28791, 43.243, 3.57146, 47.7148);
    path_0.cubicTo(4.079, 48.7179, 5.33661, 51.011, 6.3068, 52.1582);
    path_0.lineTo(32.8125, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = AppColor.paletteColors[buttonColor]![0];
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(41.4258, 1.14216);
    path_1.lineTo(12.7148, 58.7518);
    path_1.cubicTo(12.7148, 58.7518, 15.6218, 60.9361, 17.5683, 62.002);
    path_1.cubicTo(19.5149, 63.0679, 23.6523, 64.3293, 23.6523, 64.3293);
    path_1.lineTo(50.8594, 5.4043);
    path_1.cubicTo(47.9966, 3.51552, 44.8205, 2.06321, 41.4258, 1.14216);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = AppColor.paletteColors[buttonColor]![0];
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
