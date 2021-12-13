import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/http_exception_model.dart';

class AuthProvider with ChangeNotifier {
  String _token = '';

  String get token {
    return _token;
  }

  final url =
      Uri.parse('https://hacktiv-music-shop-server.herokuapp.com/users/login');

  Future<void> login(String email, String password) async {
    try {
      final resp = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: json.encode(
          {
            'email': email,
            'password': password,
          },
        ),
      );
      final respData = json.decode(resp.body);

      if (resp.statusCode >= 400) {
        throw HttpException(respData['errorMessage']);
      }

      final prefs = await SharedPreferences.getInstance();
      prefs.setString('token', respData['token']);
      _token = respData['token'];
      notifyListeners();
    } catch (err) {
      print('error di provider: $err');
      rethrow;
    }
  }

  Future<bool> autoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey("token")) {
      return false;
    }
    _token = (prefs.getString("token") as String);

    return true;
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    _token = '';
    await prefs.clear();
    notifyListeners();
  }
}
