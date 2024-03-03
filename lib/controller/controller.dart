import 'dart:convert';

import 'package:example1/api/api_config.dart';
import 'package:example1/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Controller with ChangeNotifier {
  List<Datum> products = [];

  fetchProducts() async {
    try {
      final url = Uri.parse(ApiEndPonts.baseUrl);
      var respons = await http.get(url);
      print(respons);
      if (respons.statusCode == 200) {
        var decodedData = json.decode(respons.body);
        print(decodedData);

        ProductModel productRespones = ProductModel.fromJson(decodedData);
        products = productRespones.data!;
        print(products);
        notifyListeners();
      }
    } catch (e) {}
  }
}
