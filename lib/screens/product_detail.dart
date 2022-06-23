import 'package:electros/models/product.model.dart';
import 'package:electros/utils/app_theme.dart';
import 'package:electros/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductDetail extends StatefulWidget {
  late Product product;
  var quantity = 1;

  ProductDetail({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Card(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(
                      style: BorderStyle.solid,
                      color: ColorPalette.primaryColor,
                      width: 12)),
              child: Image.network("$this.product.image"),
            ),
            Card(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(
                      style: BorderStyle.solid,
                      color: ColorPalette.primaryColor,
                      width: 12)),
              child: Column(children: <Widget>[
                Text(
                  "$this.product.label",
                  style: const TextStyle(
                      color: ColorPalette.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                Text(
                  "$this.product.description",
                  style: const TextStyle(
                      color: ColorPalette.primaryColor,
                      fontWeight: FontWeight.w200,
                      fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // TODO! convert the math to string value
                      children: <Widget>[
                        Text("\$${this.product.price * this.quantity}"),
                        Card(
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(
                                  color: ColorPalette.greyColor,
                                  width: 10,
                                  style: BorderStyle.solid)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () => {},
                                    child: const Text(
                                      "-",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: ColorPalette.darkColor),
                                    )),
                                // TODO! Correct this to read from quantity and update as required
                                Text(
                                  "$quantity",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: ColorPalette.darkColor),
                                ),
                                TextButton(
                                    onPressed: () => {},
                                    child: const Text(
                                      "+",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: ColorPalette.darkColor),
                                    )),
                              ]),
                        )
                      ]),
                )
              ]),
            ),
            ElevatedButton(
              // TODO! implement this function
              // alert product added
              // cart function implementations
                onPressed: () => {},
                child: const Text(
                  "Add to cart",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: ColorPalette.lightColor,
                      fontSize: 24),
                ))
          ],
        ),
      ),
    );
  }
}
