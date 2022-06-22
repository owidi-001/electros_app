
import 'package:electros/services/http.service.dart';
import 'package:electros/widgets/product_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/product.model.dart';

class ItemsSection extends StatelessWidget {
  ItemsSection({Key? key}) : super(key: key);

  Future<List<Product>> products = fetchProducts();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: products,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          if (kDebugMode) {
            print(snapshot.error);
          }
        }

        return snapshot.hasData
            ? ProductList(items: snapshot.data ?? [])
            : const Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     scrollDirection: Axis.horizontal,
  //     children: <Widget>[
  //       Container(
  //         height: 480.0,
  //         width: 240.0,
  //         decoration: const BoxDecoration(
  //           image: DecorationImage(
  //             image: AssetImage('assets/images/aquaman.png'),
  //             fit: BoxFit.fill,
  //           ),
  //           shape: BoxShape.rectangle,
  //         ),
  //       ),
  //       Container(
  //         height: 480.0,
  //         width: 240.0,
  //         decoration: const BoxDecoration(
  //           image: DecorationImage(
  //             image: AssetImage('assets/images/greenlantern.webp'),
  //             fit: BoxFit.fill,
  //           ),
  //           shape: BoxShape.rectangle,
  //         ),
  //       ),
  //       Container(
  //         height: 240.0,
  //         width: 240.0,
  //         decoration: const BoxDecoration(
  //           image: DecorationImage(
  //             image: AssetImage('assets/images/batman.jpg'),
  //             fit: BoxFit.fill,
  //           ),
  //           shape: BoxShape.rectangle,
  //         ),
  //       ),
  //       Container(
  //         height: 480.0,
  //         width: 240.0,
  //         decoration: const BoxDecoration(
  //           image: DecorationImage(
  //             image: AssetImage('assets/images/superman.jpg'),
  //             fit: BoxFit.fill,
  //           ),
  //           shape: BoxShape.rectangle,
  //         ),
  //       ),
  //       Container(
  //         height: 480.0,
  //         width: 240.0,
  //         decoration: const BoxDecoration(
  //           image: DecorationImage(
  //             image: AssetImage('assets/images/wonderwomen.jpg'),
  //             fit: BoxFit.fill,
  //           ),
  //           shape: BoxShape.rectangle,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
