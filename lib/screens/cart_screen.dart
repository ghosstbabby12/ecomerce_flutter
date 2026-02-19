import 'package:flutter/material.dart';
import '../models/product.dart';
import 'checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static List<Product> cartItems = [];

  @override
  Widget build(BuildContext context) {
    double total = 0;
    for (final item in cartItems) {
      total += item.price;
    }

    return Scaffold(
      appBar: AppBar(title: Text("Carrito")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index].name),
                  trailing: Text('\$${cartItems[index].price}'),
                );
              },
            ),
          ),
          Text("Total: \$${total.toStringAsFixed(2)}"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CheckoutScreen()),
              );
            },
            child: Text("Ir a Checkout"),
          ),
        ],
      ),
    );
  }
}
