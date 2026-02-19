import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/detail_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DetailScreen(product: product)),
        );
      },
      child: Card(
        child: Column(
          children: [
            Image.network(product.image, height: 120),
            Text(product.name),
            Text('\$${product.price}'),
          ],
        ),
      ),
    );
  }
}
