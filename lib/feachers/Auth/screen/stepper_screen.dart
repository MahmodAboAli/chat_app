import 'package:chat_app/core/buttons.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/images.dart';
import 'package:flutter/material.dart';

class StepperScreen extends StatelessWidget {
  const StepperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Image(image: AssetImage(AppImages.welcomeImage)),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  const Text(
                    'Welcome to lzzzychat!',
                    style: TextStyle(
                        fontSize: 22,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'kslkfj lskfldskf asa flkdsafkdas faslkdf safdksalfj sak fdjlsaf asfk asf  sal fd jsalkfjasfdk as',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 50),
                  DefaultButton(
                      title: 'Get Start',
                      onPressed: () {},
                      backgroundColor: primaryColor,
                      foregroundColor: Colors.white,
                      disabledBackgroundColor: Colors.white,
                      disabledForegroundColor: Colors.white)
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
