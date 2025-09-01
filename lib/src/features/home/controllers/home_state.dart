import 'package:riverpod/riverpod.dart';

/// Represents the state of the home feature
/// This class holds the state related to the home screen, such as loading status,
/// error messages, selected language, and user data presence.
class HomeState {
  HomeState({this.hasUserData, this.isLoading = false, this.errorMessage});

  /// Indicates whether the home screen is currently loading data
  final bool isLoading;

  /// Error message to display if an error occurs
  final String? errorMessage;

  /// Indicates whether the user has any data (e.g., progress, achievements)
  final bool? hasUserData;

  /// Creates a copy of the current state with updated values
  /// If a value is not provided, it retains the current value
  HomeState copyWith({
    bool? isLoading,
    String? errorMessage,
    bool? hasUserData,
  }) {
    return HomeState(
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
  HomeStateNotifier() : super(HomeState());

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
  return HomeStateNotifier();
});
