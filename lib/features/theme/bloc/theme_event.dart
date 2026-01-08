abstract class ThemeEvent {
  const ThemeEvent();
}

class ToggleTheme extends ThemeEvent {
  const ToggleTheme();
}

class LoadSavedTheme extends ThemeEvent {
  const LoadSavedTheme();
}