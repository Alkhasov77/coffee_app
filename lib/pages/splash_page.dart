import 'package:flutter/material.dart';
import 'package:flutter_application_coffeeshop/pages/welcome_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 7)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const WelcomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'lib/images/lottie/splash_lottie.json',
              repeat: true,
            ),
            const SizedBox(height: 50),
            const SpinKitSpinningLines(
              color: Color.fromARGB(255, 159, 93, 17),
              size: 70,
              lineWidth: 5,
            ),
          ],
        ),
      ),
    );
  }
}
