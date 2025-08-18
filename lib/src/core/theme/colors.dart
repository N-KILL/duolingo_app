part of 'app_theme_data.dart';

/// A class that defines the color scheme and theme data for the application.
final class AppColor {
  // Basic Colors
  static const Color black = Color(0xFF272727);
  static const Color white = Color(0xFFFCFCF9);
  static const Color green = Color(0xFF58A700);
  static const Color grey = Color(0xFF7E8990);
  static const Color blue = Color(0xFF3B82F6);

  // Background Colors
  static const Color darkBg = Color(0xFF111827);
  static const Color greyBg = Color(0xFFF1F0EE);
  static const Color greenBg = Color(0xFF7ED321);

  // Border Colors
  static Color borderColor = const Color.fromARGB(255, 230, 230, 230);
  static Color borderTransparent = Colors.transparent;

  // Error Color
  static const Color red = Color(0xFFfd1d1d);
  // Warning Color
  static const Color orange = Color(0xFFf59e0b);

  // Kiwi
  static const Color kiwi01 = Color(0xFF7AC70C); 
  static const Color kiwi02 = Color(0xFF8EE000); 
  static const Color kiwi03 = Color(0xFFBFF199); 

  /// Kiwi green color
  static const List<Color> kiwi = [kiwi01, kiwi02, kiwi03];

  // Blueberry
  static const Color blueberry01 = Color(0xFF1CB0F6); 
  static const Color blueberry02 = Color(0xFF14D4F4); 
  static const Color blueberry03 = Color(0xFFBCE9FF); 

  /// Blueberry blue color
  static const List<Color> blueberry = [blueberry01, blueberry02, blueberry03];

  // Banana
  static const Color banana01 = Color(0xFFFFB020); 
  static const Color banana02 = Color(0xFFFFC300); 
  static const Color banana03 = Color(0xFFFFF277); 

  /// Banana yellow color
  static const List<Color> banana = [banana01, banana02, banana03];

  // Pumpkin
  static const Color pumpkin01 = Color(0xFFFA811B); 
  static const Color pumpkin02 = Color(0xFFFF9400); 
  static const Color pumpkin03 = Color(0xFFFFCF7A); 

  /// Pumpkin orange color
  static const List<Color> pumpkin = [pumpkin01, pumpkin02, pumpkin03];

  // Raspberry
  static const Color raspberry01 = Color(0xFFD33131); 
  static const Color raspberry02 = Color(0xFFE53B3B); 
  static const Color raspberry03 = Color(0xFFFF9797); 

  /// Raspberry red color
  static const List<Color> raspberry = [raspberry01, raspberry02, raspberry03];

  // Jelly
  static const Color jelly01 = Color(0xFF8549BA); 
  static const Color jelly02 = Color(0xFFA560EB); 
  static const Color jelly03 = Color(0xFFCA94FF); 

  /// Jelly purple color
  static const List<Color> jelly = [jelly01, jelly02, jelly03];

  // Cocoa  
  static const Color cocoa01 = Color(0xFF864E1B); 
  static const Color cocoa02 = Color(0xFFA86425); 
  static const Color cocoa03 = Color(0xFFDEAC5F); 

  /// Cocoa brown color
  static const List<Color> cocoa = [cocoa01, cocoa02, cocoa03];

  // Licorice
  static const Color licorice01 = Color(0xFF4C4C4C); 
  static const Color licorice02 = Color(0xFF777777); 
  static const Color licorice03 = Color(0xFFAFAFAF); 

  /// Licorice gray color
  static const List<Color> licorice = [licorice01, licorice02, licorice03];

  // Cloud
  static const Color cloud01 = Color(0xFFCFCFCF); 
  static const Color cloud02 = Color(0xFFDDDDDD); 
  static const Color cloud03 = Color(0xFFF0F0F0); 

  /// Cloud gray color
  static const List<Color> cloud = [cloud01, cloud02, cloud03];

  /// Enum for color palettes
  static const Map<AppPalette, List<Color>> paletteColors = {
    AppPalette.kiwi: kiwi,
    AppPalette.blueberry: blueberry,
    AppPalette.banana: banana,
    AppPalette.pumpkin: pumpkin,
    AppPalette.raspberry: raspberry,
    AppPalette.jelly: jelly,
    AppPalette.cocoa: cocoa,
    AppPalette.licorice: licorice,
    AppPalette.cloud: cloud,
  };
}

/// Enum for color palettes based on the duolingo theme.
enum AppPalette {
  kiwi,
  blueberry,
  banana,
  pumpkin,
  raspberry,
  jelly,
  cocoa,
  licorice,
  cloud,
}
