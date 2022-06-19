import 'package:electros/widgets/rating_box.dart';
import 'package:flutter/material.dart';

import '../models/Product.dart';

class ProductBox extends StatelessWidget {
  final Product item;
  const ProductBox({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 140,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/images/${item.image}"),
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
        ));
  }
}
