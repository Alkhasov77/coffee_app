import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Lottie.asset(
              'lib/images/lottie/welcome_2.json',
              repeat: true,
            ),
            const SizedBox(height: 50),
            const Text(
              'The quality of the coffee beans is one of the indicators that influence the flavor and aroma of the flavor in your cup. \n Our company monitors the quality of beans and high-quality roasting. \n only the best varieties from around the world',
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
