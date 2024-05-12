import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme_bloc/bloc.dart';
import 'core/themes.dart';
import 'injection.dart';

void main() async {
  ///! To call an object of [SharedPreferences]
  ///! you must to write, one could write:
  ///! ```dart
  ///? sl<SharedPreferences>() <= this object of [SharedPreferences]
  ///! ```
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          ThemeBloc bloc = BlocProvider.of<ThemeBloc>(context);
          return MaterialApp(
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: bloc.isDark ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            title: 'Hichat',
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hi Chat app'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(decoration: const InputDecoration(hintText: 'Enter name').applyDefaults(Theme.of(context).inputDecorationTheme)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
