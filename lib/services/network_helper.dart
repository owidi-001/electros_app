import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class NetworkHelperService {
  final String apiUrl;

  NetworkHelperService({required this.apiUrl});

  Future getData() async {
    Response response = await http.get(Uri.parse(apiUrl));
    int statusCode = response.statusCode;

    if (statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      var error = response.body;
      if (kDebugMode) {
        print("Error: $error \nStatus: $statusCode");
      }
      return response.body;
    }
  }
}
