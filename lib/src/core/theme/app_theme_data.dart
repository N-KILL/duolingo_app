import 'package:flutter/material.dart';

part 'colors.dart';

/// A class that defines the light theme for the application.
/// It includes app bar themes, icon themes, scaffold background colors,
/// card themes, dropdown menu themes, input decoration themes,
/// primary colors, color schemes, and text themes.
final ThemeData lightTheme = ThemeData(
  iconTheme: IconThemeData(color: AppColor.grey),

  scaffoldBackgroundColor: AppColor.white,

  cardTheme: CardTheme(
    color: AppColor.white,
    shadowColor: Colors.black.withAlpha(100),
    elevation: 16,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),

  listTileTheme: ListTileThemeData(tileColor: AppColor.greenBg),

  progressIndicatorTheme: ProgressIndicatorThemeData(color: AppColor.greenBg),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 8,
    backgroundColor: AppColor.greenBg,
    selectedItemColor: AppColor.black,
    unselectedItemColor: AppColor.white,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    selectedLabelStyle: TextStyle(color: AppColor.black),
    unselectedLabelStyle: TextStyle(color: AppColor.white),
    type: BottomNavigationBarType.fixed,
  ),

  dropdownMenuTheme: dropdownMenuThemeData(
    textColor: AppColor.black,
    backgroundColor: AppColor.white,
    borderColor: AppColor.borderColor,
  ),

  inputDecorationTheme: customInputDecorationTheme(
    textColor: AppColor.black,
    backgroundColor: AppColor.white,
    borderColor: AppColor.borderColor,
  ),

  textSelectionTheme: TextSelectionThemeData(
    cursorColor: AppColor.green,
    selectionColor: AppColor.blue,
    selectionHandleColor: AppColor.grey,
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: AppColor.white,
    contentTextStyle: TextStyle(color: AppColor.black),
    actionTextColor: AppColor.green,
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      iconColor: AppColor.black,
      textStyle: TextStyle(color: AppColor.black),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.greenBg,
      foregroundColor: AppColor.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      textStyle: TextStyle(fontWeight: FontWeight.bold, color: AppColor.white),
    ),
  ),

  primaryColor: AppColor.white,

  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColor.white,
    onPrimary: AppColor.black,
    secondary: AppColor.black,
    onSecondary: AppColor.white,
    tertiary: AppColor.blue,
    onTertiary: AppColor.black,
    error: AppColor.red,
    onError: AppColor.white,
    surface: AppColor.greenBg,
    onSurface: AppColor.white,
  ),

  textTheme: TextTheme(
    bodyLarge: TextStyle(color: AppColor.black),
    bodyMedium: TextStyle(color: AppColor.black),
    bodySmall: TextStyle(color: AppColor.black),
  ),
);

/// Returns an [InputDecorationTheme] with the specified text color,
/// background color, and border color.
InputDecorationTheme customInputDecorationTheme({
  required Color textColor,
  required Color backgroundColor,
  required Color borderColor,
}) => InputDecorationTheme(
  filled: true,
  fillColor: backgroundColor,
  focusColor: backgroundColor,
  hintStyle: TextStyle(color: textColor),
  labelStyle: TextStyle(color: textColor),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: borderColor),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: borderColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: borderColor),
  ),
);

/// Returns a [DropdownMenuThemeData] with the specified text color,
/// background color, and border color.
DropdownMenuThemeData dropdownMenuThemeData({
  required Color textColor,
  required Color backgroundColor,
  required Color borderColor,
}) => DropdownMenuThemeData(
  textStyle: TextStyle(color: textColor),
  menuStyle: MenuStyle(
    backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  inputDecorationTheme: customInputDecorationTheme(
    backgroundColor: backgroundColor,
    textColor: textColor,
    borderColor: borderColor,
  ),
);
