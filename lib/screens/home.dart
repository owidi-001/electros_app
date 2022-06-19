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

  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: 200,
              title: const Text("electros"),
            ),
            SliverToBoxAdapter(
              child: FutureBuilder<List<Product>>(
                future: products,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    if (kDebugMode) {
                      print(snapshot.error);
                    }
                  }

                  return ProductBoxList(items: snapshot.data ?? []);
                  // return snapshot.hasData
                  //     ? ProductBoxList(items: snapshot.data ?? [])
                  //     : const Center(
                  //     child: CircularProgressIndicator(),
                  //   );
                  
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
