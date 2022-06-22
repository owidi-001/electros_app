import 'package:electros/models/category.model.dart';

class Product {
  final int id;
  final String label;
  final String description;
  final double price;
  final String image;
  final Category category;

  Product(this.id,this.label, this.description, this.price, this.image, this.category);

  //   methods
  Map toJson() {
    Map category = this.category.toJson();

    return {
      "id":id,
      "label": label,
      "description": description,
      "price": price,
      "image": image,
      "category": category
    };
  }

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['id'] as int,
      json['label'] as String,
      json['description'] as String,
      json['price'] as double,
      json['image'] as String,
      json['category'] as Category,
    );
  }

  factory Product.fromJson(Map<String, dynamic> data) {
    return Product(
      data['id'] as int,
      data['label'] as String,
      data['description'] as String,
      data['price'] as double,
      data['image'] as String,
      // data['category'] as Category
      Category.fromJson(data['category'])
    );
  }
}
