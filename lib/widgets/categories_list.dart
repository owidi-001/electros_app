// import 'package:electros/models/category.model.dart';
// import 'package:electros/services/http.service.dart';
// import 'package:electros/widgets/product_list.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
// import 'categories_card.dart';
//
// class CategorySection extends StatelessWidget {
//   // TODO! Get a list of categories from future safely
//   final List<ProductCategory> categories=fetchCategories().toList();
//   CategorySection({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: ListView.builder(itemBuilder: (context, index) {
//           return GestureDetector(
//             child: CategoryCard(category: categories[index]),
//             onTap: () {
//               if (kDebugMode) {
//                 print("Category $categories[index].name ");
//               }
//               //TODO! fetch products according to category name passed
//               ProductList(products: categoryProducts({categories[index].name}));
//             },
//           );
//         }));
//   }
// }
