import 'package:electros/screens/product_detail.dart';
import 'package:electros/widgets/product_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/product.model.dart';


class ProductList extends StatelessWidget {
  final List<Product> items;
  const ProductList({Key? key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: ProductCard(item: items[index]),
          onTap: () {
            if (kDebugMode) {
              print("Item clicked");
              print("$items[index]");
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetail(item: items[index]),
              ),
            );
          },
        );
      },
    );
  }
}