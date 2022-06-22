class Category {
  final String name;

  Category(this.name);

  Map toJson()=>{
    "name":name
  };

factory Category.fromMap(Map<String, dynamic> json) {
    return Category(
      json['name'],
    );
  }

  factory Category.fromJson(Map<String, dynamic> data) {
    return Category(
      data['name'],
    );
  }

}
