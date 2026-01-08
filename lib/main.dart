import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'features/counter/bloc/counter_bloc.dart';
import 'features/theme/bloc/theme_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (_) => ThemeBloc(),
        ),
        BlocProvider<CounterBloc>(
          create: (_) => CounterBloc(),
        ),
      ],
      child: const App(),
    ),
  );
}
