import 'package:electros/models/product.model.dart';
import 'package:electros/services/http.service.dart';
import 'package:electros/utils/app_theme.dart';
import 'package:electros/widgets/items_section.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/categories_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Future<List<Product>> products = fetchProducts();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (kDebugMode) {
      print(products);
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(10)),
                // nav bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Good Morning",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: ColorPalette.greyColor),
                        ),
                        Text(
                          "John Doe",
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              color: ColorPalette.darkColor),
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/images/avatar.png",
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.all(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Promotion",
                      style: TextStyle(
                          color: ColorPalette.darkColor,
                          fontWeight: FontWeight.normal),
                    ),
                    TextButton(
                        onPressed: () => {},
                        child: const Text(
                          "more",
                          style: TextStyle(
                              color: ColorPalette.primaryColor,
                              fontWeight: FontWeight.normal),
                        ))
                  ],
                ),
                
                // hero
                Card(
                    elevation: 0,
                    color: ColorPalette.primaryColor,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: ColorPalette.greyColor),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Google Pixels",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: ColorPalette.lightColor),
                              ),
                              const Text(
                                "48 MP",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPalette.lightColor),
                              ),
                              const Text(
                                "Camera",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPalette.lightColor),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    "\$600",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                  Text(
                                    "\$800",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: ColorPalette.gradientColor,
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              )
                            ],
                          ),
                          Expanded(
                            child: Image.asset(
                              "assets/images/pixel.png",
                              // height: 300,
                            ),
                          )
                        ],
                      ),
                    )),

                // Item categories list
                CategorySection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
