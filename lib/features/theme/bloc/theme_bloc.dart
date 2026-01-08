import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(themeMode: ThemeMode.light)) {
    on<ThemeToggled>(_onThemeToggled);
  }

  void _onThemeToggled(
    ThemeToggled event,
    Emitter<ThemeState> emit,
  ) {
    final isLight = state.themeMode == ThemeMode.light;

    emit(
      ThemeState(
        themeMode: isLight ? ThemeMode.dark : ThemeMode.light,
      ),
    );
  }
}
