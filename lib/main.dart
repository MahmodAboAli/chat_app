import 'package:chat_app/core/buttons.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
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
      home: const Scaffold(),
      // const TestPage(),
    );
  }
}

// class TestPage extends StatelessWidget {
//   const TestPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text('Start'),
//               const SizedBox(height: 10),
//               DefaultButton(
//                 enabled: false,
//                 title: "Get Started",
//                 onPressed: () {},
//                 backgroundColor: dark3Color,
//                 foregroundColor: whiteColor,
//                 disabledBackgroundColor: dark2Color,
//                 disabledForegroundColor: greyscale100Color,
//               ),
//               const SizedBox(height: 30),
//               DefaultButtonWithIcon(
//                 icon: FontAwesomeIcons.cartShopping,
//                 // enabled: false,
//                 title: "Get Started",
//                 onPressed: () {},
//                 backgroundColor: blueBackground,
//                 foregroundColor: infoColor,
//                 disabledBackgroundColor: dark2Color,
//                 disabledForegroundColor: greyscale100Color,
//               ),
//               const SizedBox(height: 30),
//               SocialButton(
//                   isDark: false,
//                   title: 'Continue with Apple',
//                   logo: Logo.apple,
//                   onPressed: () {})
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
