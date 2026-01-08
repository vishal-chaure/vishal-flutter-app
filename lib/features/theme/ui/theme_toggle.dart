import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_bloc.dart';
import '../bloc/theme_event.dart';
import '../bloc/theme_state.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final isDark = state.themeMode == ThemeMode.dark;

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.light_mode),
            Switch(
              value: isDark,
              onChanged: (_) {
                context.read<ThemeBloc>().add(const ToggleTheme());
              },
            ),
            const Icon(Icons.dark_mode),
          ],
        );
      },
    );
  }
}
