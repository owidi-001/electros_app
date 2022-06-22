class ProductCategory {
  final String name;
  final String logo;

  ProductCategory(this.name, this.logo);

  Map toJson() => {"name": name, "logo": logo};

  factory ProductCategory.fromMap(Map<String, dynamic> json) {
    return ProductCategory(
      json['name'],
      json['logo'],
    );
  }

  factory ProductCategory.fromJson(Map<String, dynamic> data) {
    return ProductCategory(
      data['name'],
      data['logo'],
    );
  }
}
