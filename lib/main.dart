import 'package:electros/constants.dart';
import 'package:electros/screens/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/Product.dart';

void main() {
  runApp(MyApp(
    products: fetchProducts(),
  ));

  if (kDebugMode) {
    print("Test point 1");
    print(fetchProducts());
  }
}

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

class MyApp extends StatelessWidget {
  final Future<List<Product>> products;
  const MyApp({Key? key, required this.products}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Products Page', products: products),
    );
  }
}
