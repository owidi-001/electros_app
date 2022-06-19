import 'package:electros/widgets/product_box.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/Product.dart';
import '../screens/product_page.dart';

class ProductBoxList extends StatelessWidget {
  final List<Product> items;
  const ProductBoxList({Key? key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: ProductBox(item: items[index]),
          onTap: () {
            if (kDebugMode) {
              print("Item clicked");
              print("$items[index]");
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(item: items[index]),
              ),
            );
          },
        );
      },
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return SliverGrid(
  //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 2,
  //       mainAxisSpacing: 10,
  //       crossAxisSpacing: 10,
  //       childAspectRatio: 2.0,
  //     ),
  //     delegate: SliverChildBuilderDelegate(
  //       (context, index) {
  //         return GestureDetector(
  //           child: ProductBox(item: items[index]),
  //           onTap: () {
  //             if (kDebugMode) {
  //               print("Item clicked");
  //               print(items[index]);
  //             }
  //
  //             Navigator.push(
  //               context,
  //               MaterialPageRoute(
  //                 builder: (context) => ProductPage(item: items[index]),
  //               ),
  //             );
  //           },
  //         );
  //       },
  //       childCount: items.length,
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return SliverGrid.count(
  //     crossAxisCount: 2,
  //     mainAxisSpacing: 10.0,
  //     crossAxisSpacing: 10.0,
  //     childAspectRatio: 1,
  //     children: <Widget>[
  //       Card(
  //         color: Colors.blue[200],
  //         child: Container(),
  //       ),
  //       Card(
  //         color: Colors.blue[400],
  //         child: Container(),
  //       ),
  //       Card(
  //         color: Colors.blue[600],
  //         child: Container(),
  //       ),
  //       Card(
  //         color: Colors.blue[100],
  //         child: Container(),
  //       ),
  //     ],
  //   );
  // }
}
