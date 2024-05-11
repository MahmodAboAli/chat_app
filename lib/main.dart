import 'package:chat_app/core/alert_messages.dart';
import 'package:flutter/material.dart';

import 'core/themes.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Hichat',
      home: const SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Start'),
                SizedBox(height: 30),
                AlertMessage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
