import 'package:electros/utils/app_theme.dart';
import 'package:electros/utils/constants.dart';
import 'package:flutter/material.dart';

import '../models/category.model.dart';

class CategoryCard extends StatelessWidget {
  final ProductCategory category;
  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network("$baseUrl/${category.logo}"),
            Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(category.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: ColorPalette.lightColor)),

                    // Text("${category.count}"),
                  ],
                ))
          ]),
    );
  }
}
