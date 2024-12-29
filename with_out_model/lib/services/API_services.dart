import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  Future<dynamic> getsingle() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    return data;
  }

  Future<dynamic> getmutiple() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    }
  }
}
