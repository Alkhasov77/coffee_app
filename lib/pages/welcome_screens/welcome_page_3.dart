import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage3 extends StatelessWidget {
  const WelcomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Lottie.asset(
              'lib/images/lottie/welcome_3.json',
              repeat: true,
            ),
            const SizedBox(height: 50),
            const Text(
              'In addition to the best coffee, you will find our own pastries with us, which will be the best addition to your drink.',
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
