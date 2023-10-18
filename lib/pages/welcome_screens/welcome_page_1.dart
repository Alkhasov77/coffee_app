import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Lottie.asset(
              'lib/images/lottie/welcome_1.json',
              repeat: true,
            ),
            const SizedBox(height: 50),
            const Text(
              'Welcome to our mobile application. \n In a few clicks, your favorite coffee \n will be at your home. \n We are glad that you have chosen us.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
