import 'dart:convert';
import 'package:with_model/models/get_list_model.dart';
import 'package:with_model/models/get_single_multi.dart';
import 'package:with_model/models/login_post.dart';
import 'package:with_model/models/multiple_post.dart';
import 'package:with_model/models/single_post.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  bool notfound = false;
  Future<single_post?> GetSinglePost() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        single_post models = single_post.fromJson(json.decode(response.body));
        return models;
      }
    } catch (e) {
      print(e);
      print("get ma masla ha ");
    }
  }

  Future<List?> Get_list_services() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<GetListModel> model = List<GetListModel>.from(
          json.decode(response.body).map((x) => GetListModel.fromJson(x)));
      return model;
    }
  }

  Future<get_single_multi?> get_single_multi_services() async {
    var url = Uri.parse('https://reqres.in/api/users?page=2');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      get_single_multi model =
          get_single_multi.fromJson(jsonDecode(response.body));
      return model;
    }
  }

  Future<login_post?> user_login(String emial, String password) async {
    var url = Uri.parse('https://reqres.in/api/login');
    var response =
        await http.post(url, body: {"email": emial, "password": password});
    if (response.statusCode == 200) {
      login_post dataReturn = login_post.fromJson(jsonDecode(response.body));
      return dataReturn;
    } else {
      notfound = true;
    }
  }
}
  