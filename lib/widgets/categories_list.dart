import 'package:electros/models/category.model.dart';
import 'package:electros/services/http.service.dart';
import 'package:electros/widgets/product_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'categories_card.dart';

class CategorySection extends StatelessWidget {
  final List<ProductCategory> categories=fetchCategories().toList();
  CategorySection({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ListView.builder(itemBuilder: (context, index) {
          return GestureDetector(
            child: CategoryCard(category: categories[index]),
            onTap: () {
              if (kDebugMode) {
                print("Category $categories[index].name ");
              }
              const ProductList(items: [],);
            },
          );
        }));
  }
}
