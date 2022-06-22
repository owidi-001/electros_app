import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/foundation.dart';

import '../models/category.model.dart';
import '../utils/constants.dart';
import '../models/product.model.dart';

List<Product> parseProducts(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Product>((json) => Product.fromJson(json)).toList();
}

Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse("$baseUrl/products/"));

  if (response.statusCode == 200) {
    if (kDebugMode) {
      print(response);
    }
    return parseProducts(response.body);
  } else {
    throw Exception('Unable to fetch products from the REST API');
  }
}

Future<List<ProductCategory>> parseCategories(String body) {
  final parsed = json.decode(body).cast<Map<String, String>>();

  return parsed
      .map<ProductCategory>((json) => ProductCategory.fromJson(json))
      .toList();
}

Future<List<ProductCategory>> fetchCategories() async {
  final response = await http.get(Uri.parse("$baseUrl/categories"));

  if (response.statusCode == 200) {
    if (kDebugMode) {
      print(response.body);
    }
    return parseCategories(response.body);
  } else {
    throw Exception("Unable to fetch categories from the REST API");
  }
}

Future<List<Product>> categoryProducts(String category) async {
  final response = await http.get(Uri.parse("$baseUrl/$category/products"));

  if (response.statusCode == 200) {
    if (kDebugMode) {
      print(response);
    }
    return parseProducts(response.body);
  } else {
    throw Exception("Unable to fetch products from the REST API");
  }
}
