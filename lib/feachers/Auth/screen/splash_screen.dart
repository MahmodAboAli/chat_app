import 'dart:async';

import 'package:chat_app/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 250), () {
      setState(() {
        opacity = 1;
      });
    });

    Timer(const Duration(milliseconds: 1500), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const MyHomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(milliseconds: 750),
        child: Container(
          child: const Text("wellcome"),
        ),
      )),
    );
  }
}
