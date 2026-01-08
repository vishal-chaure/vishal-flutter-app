import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/local/theme_preferences.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(isDark: false)) {
    // Load saved theme on app start
    on<LoadSavedTheme>((event, emit) async {
      final isDark = await ThemePreferences.loadTheme();
      emit(ThemeState(isDark: isDark));
    });

    // Toggle theme
    on<ToggleTheme>((event, emit) async {
      final newTheme = !state.isDark;
      await ThemePreferences.saveTheme(newTheme);
      emit(ThemeState(isDark: newTheme));
    });
  }
}