import 'package:electros/constants.dart';
import 'package:flutter/material.dart';

import '../models/Product.dart';
import '../widgets/rating_box.dart';

class ProductPage extends StatelessWidget {
  final Product item;
  const ProductPage({Key? key, required this.item}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network("$baseUrl/${item.image}"),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(item.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            Text(item.description),
                            Text("Price: ${item.price}"),
                            RatingBox(),
                          ],
                        )))
              ]),
        ),
      ),
    );

  }
}
