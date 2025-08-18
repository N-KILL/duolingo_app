import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:duolingo_app/src/repositories/repositories.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) =>
      throw UnimplementedError(
        'Debe proveer SharedPreferences en el ProviderScope',
      ),
);

final userPreferencesRepositoryProvider = Provider<UserPreferencesRepository>((
  ref,
) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);
  return UserPreferencesRepository(sharedPreferences);
});

// TODO(nacho): Implementar overrides para pruebas
final List<Override> repositoryProviders = [];
