import 'package:duolingo_app/src/utils/lang_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesRepository {
  UserPreferencesRepository(this.prefs);

  final SharedPreferences prefs;

  /// Set the selected language in preferences
  Future<bool> setSelectedLanguage(String language) async {
    return await prefs.setString('selectedLanguage', language);
  }

  /// Get the selected language from preferences
  /// Returns 'en' if no language is set.
  ///
  /// Note: This shouldn't be null, because users always have a default language.
  /// chosen on the first run.
  LearningLanguage get getSelectedLanguage {
    return LearningLanguage.values.firstWhere(
      (lang) => lang.code == (prefs.getString('selectedLanguage')),
      orElse: () => LearningLanguage.english,
    );
  }

  /// Clear all the data of the user
  Future<bool> clearPreferences() async {
    return await prefs.clear();
  }
}
