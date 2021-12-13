// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/guitar_model.dart';

class GuitarProvider with ChangeNotifier {
  List<GuitarModel> _guitars = <GuitarModel>[];
  final String _token;

  GuitarProvider(this._token);

  final url =
      Uri.parse('https://hacktiv-music-shop-server.herokuapp.com/guitars');

  List<GuitarModel> get guitars {
    return [..._guitars];
  }

  Future<void> fetchAndSetProducts() async {
    try {
      final resp =
          await http.get(url, headers: {'Authorization': 'Bearer $_token'});
      final extractedData = json.decode(resp.body);
      List<GuitarModel> loadedDatas = [];
      if (resp.statusCode >= 400) {
        print("error: $extractedData");
      }

      extractedData.forEach((guitar) {
        final currentData = GuitarModel(
          id: guitar['id'],
          brand: guitar['brand'],
          type: guitar['type'],
          price: double.parse(guitar['price'].toString()),
          desc: guitar['desc'],
          imgUrl: guitar['imgUrl'],
        );
        loadedDatas.add(currentData);
      });

      _guitars = loadedDatas;
    } catch (err) {
      rethrow;
    }
  }
}
