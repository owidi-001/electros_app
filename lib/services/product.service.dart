import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/foundation.dart';


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