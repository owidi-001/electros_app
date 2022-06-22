import 'dart:ffi';

import 'package:electros/models/product.model.dart';
import 'package:electros/services/product.service.dart';
import 'package:electros/widgets/items_section.dart';
import 'package:electros/widgets/product_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  late final Future<List<Product>> products = fetchProducts();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (kDebugMode) {
      print(products);
    }

    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          children: <Widget>[
            // hero
            SizedBox(
              height: size.height * 0.4,
              width: size.width,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: const SizedBox(
                  width: 300,
                  height: 100,
                  child: Center(child: Text('Outlined Card')),
                ),
              ),
            ),

            // Item categorical list
            ItemsSection(),
          ],
        )),
      ),
    );
  }
}
