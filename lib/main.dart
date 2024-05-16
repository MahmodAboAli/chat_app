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
  ///
  ////////////////////////////////////////////////////////////////
  ///
  /// To use the themes for [Text] of the application,
  /// one could write:
  ///
  /// ```dart
  ///? Text("label", style: Theme.of(context).textTheme.bodyLarge),
  /// ```
  ////////////////////////////////////////////////////////////////
  ///
  ///! Don't do this, But if you are forced to use a properties,
  ///! one could write:
  ///
  /// ```dart
  ///? Text("label", style: Theme.of(context).textTheme.bodyLarge.copyWith()),
  /// ```
  ////////////////////////////////////////////////////////////////
  ///
  ///! To call a [TextFormField] with our themes app
  ///  one could write:
  ///
  /// ```dart
  ///? CustomTextField(
  ///?   hintText: 'Some text',
  ///   ...
  /// ),
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
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Main Page"),
            ],
          ),
        ),
      ),
    );
  }
}
