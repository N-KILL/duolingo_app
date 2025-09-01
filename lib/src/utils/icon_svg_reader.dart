import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Utility function to create an SVG icon widget from assets.
/// Use this in your AppIconButton or anywhere you need an SVG icon.
Widget svgIcon(
  String assetName, {
  double size = 24.0,
  Color? color,
  BoxFit fit = BoxFit.contain,
  Key? key,
}) {
  return SvgPicture.asset(
    assetName,
    key: key,
    width: size,
    height: size,
    colorFilter:
        color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
    fit: fit,
  );
}

/// Utility function to create an SVG icon widget from network URL.
Widget svgIconFromUrl(
  String url, {
  double size = 24.0,
  Color? color,
  BoxFit fit = BoxFit.contain,
  Key? key,
}) {
  return SvgPicture.network(
    url,
    key: key,
    width: size,
    height: size,
    colorFilter:
        color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
    fit: fit,
  );
}
