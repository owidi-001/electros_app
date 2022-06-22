import 'package:electros/models/product.model.dart';
import 'package:electros/services/product.service.dart';
import 'package:electros/utils/app_theme.dart';
import 'package:electros/widgets/items_section.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
                const Padding(padding: EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      "Promotion",
                      style: TextStyle(
                          color: ColorPalette.darkColor,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "more",
                      style: TextStyle(
                          color: ColorPalette.primaryColor,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                // hero
                Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Get Free",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueGrey),
                            ),
                            const Text(
                              "Shipping",
                              style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black12),
                            ),
                            const Text(
                              "First Purchase",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueGrey),
                            ),
                            ElevatedButton(
                                onPressed: () => {},
                                child: const Text(
                                  "Shop Now",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ))
                          ],
                        ),
                        Expanded(
                          child: Image.asset(
                            "assets/images/pixel.png",
                            // height: 300,
                          ),
                        )
                      ],
                    )),

                // Item categorical list
                ItemsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
