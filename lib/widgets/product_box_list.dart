import 'package:electros/widgets/product_box.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/Product.dart';
import '../screens/product_page.dart';

class ProductBoxList extends StatelessWidget {
  final List<Product>? items;
  const ProductBoxList({Key? key, this.items});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: items?.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: ProductBox(item: items![index]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(item: items![index]),
              ),
            );
          },
        );
      },
    );
  }
}
