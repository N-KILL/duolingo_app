import 'package:riverpod/riverpod.dart';

import 'package:duolingo_app/src/core/providers/repository_providers.dart';
import 'package:duolingo_app/src/repositories/repositories.dart';
import 'package:duolingo_app/src/utils/lang_enum.dart';

/// Represents the state of the home feature
/// This class holds the state related to the home screen, such as loading status,
/// error messages, selected language, and user data presence.
class HomeState {
  HomeState(
    this.selectedLanguage, {
    this.hasUserData,
    this.isLoading = false,
    this.errorMessage,
  });

  /// Indicates whether the home screen is currently loading data
  final bool isLoading;

  /// Error message to display if an error occurs
  final String? errorMessage;

  /// The selected language for the home screen
  /// This is used to determine which language curse has been selected by the
  /// user
  final LearningLanguage selectedLanguage;

  /// Indicates whether the user has any data (e.g., progress, achievements)
  final bool? hasUserData;

  /// Creates a copy of the current state with updated values
  /// If a value is not provided, it retains the current value
  HomeState copyWith({
    bool? isLoading,
    String? errorMessage,
    LearningLanguage? selectedLanguage,
    bool? hasUserData,
  }) {
    return HomeState(
      selectedLanguage ?? this.selectedLanguage,
      hasUserData: hasUserData ?? this.hasUserData,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

/// StateNotifier for managing the home state
/// This class handles the logic for loading the selected language, user data,
/// and error states.
class HomeStateNotifier extends StateNotifier<HomeState> {
  final UserPreferencesRepository userPreferencesRepository;

  HomeStateNotifier(this.userPreferencesRepository)
    : super(HomeState(LearningLanguage.english)) {
    state = HomeState(_loadSelectedLanguage());
  }

  /// Loads the selected language from user preferences
  /// If no language is set, defaults to 'en'
  LearningLanguage _loadSelectedLanguage() {
    final selectedLanguage = userPreferencesRepository.getSelectedLanguage;
    state = state.copyWith(selectedLanguage: selectedLanguage);
    return selectedLanguage;
  }

  /// Saves the selected language to user preferences
  /// Updates the state with the new selected language
  Future<void> saveSelectedLanguage(LearningLanguage language) async {
    await userPreferencesRepository.setSelectedLanguage(language.code);
    state = state.copyWith(selectedLanguage: language);
  }

  /// Sets the loading state
  void setLoading(bool loading) {
    state = state.copyWith(isLoading: loading);
  }

  /// Sets the error message in the state
  void setError(String? message) {
    state = state.copyWith(errorMessage: message);
  }

  /// Clears the error message in the state
  /// This is useful to reset the error state after it has been handled
  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}

/// Provider for the HomeStateNotifier
/// This provider allows access to the home state and its notifier
final homeStateProvider = StateNotifierProvider<HomeStateNotifier, HomeState>((
  ref,
) {
  final userPreferencesRepository = ref.watch(
    userPreferencesRepositoryProvider,
  );
  return HomeStateNotifier(userPreferencesRepository);
});
