import 'package:electros/models/Product.dart';
import 'package:electros/services/product.service.dart';
import 'package:electros/widgets/category_card.dart';
import 'package:flutter/material.dart';

// Tabbed category list views
Widget categoryCardListView() {
  List<ProductCategory> categories =
      ProductCategoryService().getAllCategories();
  return SizedBox(
    height: 120,
    width: 400,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return const CategoryCard();
      },
    ),
  );
}
