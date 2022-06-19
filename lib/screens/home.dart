import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/Product.dart';
import '../widgets/product_box_list.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final Future<List<Product>> products;

  const MyHomePage({Key? key, required this.title, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatever"),
      ),
      body: Center(
          child: FutureBuilder<List<Product>>(
        future: products,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            if (kDebugMode) {
              print(snapshot.error);
            }
          }

          if (kDebugMode) {
            print("Test point 2");
            print(snapshot.data);
          }

          return snapshot.hasData
              ? ProductBoxList(items: snapshot.data)
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      )),
    );
  }
}
