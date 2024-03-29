class Product {
  final String name;
  final String description;
  final double price;
  final String image;

  Product(this.name, this.description, this.price, this.image);

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['name'],
      json['description'],
      json['price'],
      json['image'],
    );
  }

  factory Product.fromJson(Map<String, dynamic> data) {
    return Product(
      data['name'],
      data['description'],
      data['price'],
      data['image'],
    );
  }
}

class ProductCategory {
  final String name;
  final String image;
  final int count;

  ProductCategory(this.name, this.image, this.count);

  factory ProductCategory.fromJson(Map<String, dynamic> data) {
    return ProductCategory(
      data['name'],
      data['count'],
      data['image'],
    );
  }
}
