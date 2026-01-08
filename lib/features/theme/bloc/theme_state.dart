import 'package:flutter/material.dart';

class ThemeState {
  final bool isDark;

  ThemeState({required this.isDark});

  ThemeMode get themeMode => isDark ? ThemeMode.dark : ThemeMode.light;
}