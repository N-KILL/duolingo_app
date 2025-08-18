/// Represents the languages available for learning, we re going to use only 
/// english for the moment
enum LearningLanguage {
  english('en', 'us'),
  spanish('es', 'es'),
  french('fr', 'fr'),
  italian('it', 'it'),
  portuguese('pt', 'pt');

  const LearningLanguage(this.code, this.flag);

  /// The language code (e.g., 'en' for English)
  final String code;

  /// The flag emoji representing the country of the language
  final String flag;

  /// The name of the language derived from the enum value
  String get name => toString().split('.').last;

  @override
  String toString() => '$flag $name';
}
