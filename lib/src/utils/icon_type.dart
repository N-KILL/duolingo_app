// This file is part of the Duolingo App project.
// It contains utility functions for handling app icons.


// This enum defines the types of icons used in the app.
enum AppIconType { star, heart, trophy }


// This function returns the SVG path for a given icon type.
/// It is used to map the icon type to its corresponding asset path.
String getPathOfTheIcon(AppIconType icon) {
  switch (icon) {
    case AppIconType.star:
      return 'assets/icons/star.svg';
    case AppIconType.heart:
      return 'assets/icons/heart.svg';
    case AppIconType.trophy:
      return 'assets/icons/trophy.svg';
  }
}