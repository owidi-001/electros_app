import 'package:electros/utils/theme.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: CustomTheme.deepColor,
        child: Row(children: [
          Flexible(flex: 1, child: Image.asset("assets/images/mini-mac.png")),
          Flexible(
              flex: 2,
              child: Column(
                children: const <Widget>[
                  Text(
                    "Laptop",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: CustomTheme.whiteColor),
                  ),
                  Text(
                    "64 Products",
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.normal,
                        color: CustomTheme.whiteColor),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
