import 'package:flutter/material.dart';
import '../models/product.dart';
import 'cart_screen.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Image.network(product.image, height: 250),
          SizedBox(height: 10),
          Text(product.description),
          Text('\$${product.price}', style: TextStyle(fontSize: 22)),
          ElevatedButton(
            onPressed: () {
              CartScreen.cartItems.add(product);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Agregado al carrito")));
            },
            child: Text("Agregar al carrito"),
          ),
        ],
      ),
    );
  }
}
