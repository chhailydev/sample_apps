import 'package:flutter/material.dart';
import 'package:sample_app/ui/products/Product.dart';
import 'package:sample_app/ui/products/ProductCard.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: produts.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductCard(product: produts[index]);
      },
    );
  }
}
