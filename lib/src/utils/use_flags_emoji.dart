/// Turns a country code (e.g., "US", "FR") into its corresponding flag emoji.
String getFlagEmoji(String countryCode) {
  countryCode = countryCode.toUpperCase();
  if (countryCode.length != 2) return '';
  
  final base = 0x1F1E6;
  final offset = countryCode.codeUnits.map((c) => base + c - 65).toList();
  
  return String.fromCharCodes(offset);
}
