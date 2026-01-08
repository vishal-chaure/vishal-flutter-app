import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {
  static const _themeKey = 'is_dark_mode';

  // Save theme
  static Future<void> saveTheme(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, isDark);
  }

  // Load theme
  static Future<bool> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_themeKey) ?? false; // default: light
  }
}