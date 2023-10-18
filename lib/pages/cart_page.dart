import 'package:flutter/material.dart';
import 'package:flutter_application_coffeeshop/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 50, 50, 50),
        title: const Text('My Cart'),
        centerTitle: true,
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: value.cartItems.length,
                    padding: const EdgeInsets.all(12.0),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: ListTile(
                              leading: Image.asset(
                                value.cartItems[index][2],
                                height: 66,
                              ),
                              title: Text(value.cartItems[index][0]),
                              subtitle: Text('\$' + value.cartItems[index][1]),
                              trailing: IconButton(
                                onPressed: () => Provider.of<CartModel>(context,
                                        listen: false)
                                    .removeItemFromCart(index),
                                icon: const Icon(Icons.cancel),
                              )),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(36),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(color: Colors.green[100]),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '\$' + value.calculateTotal(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade100),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Row(
                          children: [
                            Text(
                              'Pay Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
