import 'package:electros/screens/product_detail.dart';
import 'package:electros/widgets/product_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/product.model.dart';


class ProductList extends StatelessWidget {
  final List<Product> products;
  const ProductList({Key? key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: ProductCard(item: products[index]),
          onTap: () {
            if (kDebugMode) {
              print("$products[index].label");
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetail(product: products[index]),
              ),
            );
          },
        );
      },
    );
  }
}