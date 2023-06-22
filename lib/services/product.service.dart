import 'package:electros/models/Product.dart';

var baseURL = "";

// product category
class ProductCategoryService {
  final String route = "$baseURL/category";

  // get all products
  List<ProductCategory> getAllCategories() {
    // dummy data
    return [
      ProductCategory("Laptops", "assets/images/macbook1.png", 20),
      ProductCategory("Tablets", "assets/images/ipad.png", 10),
      ProductCategory("Phones", "assets/images/iphone.png", 20),
      ProductCategory("Monitors", "assets/images/imac.png", 64),
      ProductCategory("Desktops", "assets/images/mini-mac.png", 100),
    ];
  }
}
