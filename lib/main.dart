import 'package:flutter/material.dart';
import 'package:flutter_application_coffeeshop/model/cart_model.dart';
import 'package:flutter_application_coffeeshop/pages/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CoffeeShop());
}

class CoffeeShop extends StatelessWidget {
  const CoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
