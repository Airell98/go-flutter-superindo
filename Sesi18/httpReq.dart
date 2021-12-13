import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> fetchTodoDatas(int i) async {
  try {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/$i');
    final resp = await http.get(url);
    final extractedDatas = json.decode(resp.body);
    print("fetchTodoDatas: $extractedDatas");
    return extractedDatas;
  } catch (err) {
    rethrow;
  }
}

void main() async {
  for (var i = 1; i <= 10; i++) {
    try {
      final resp = await fetchTodoDatas(i);
      print(resp);
    } catch (err) {
      print(err);
    }
  }
}
