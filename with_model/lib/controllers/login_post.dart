import 'package:flutter/material.dart';
import 'package:with_model/models/login_post.dart';
import 'package:with_model/services/Api_class.dart';
import 'package:with_model/views/Login_home.dart';

login_post model = login_post();
login_post_controller(String emial, String password, context) async {
  await ApiServices().user_login(emial, password).then((values) {
    model = values!;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => LoginHome(
                  tokens: model.token.toString(),
                )));
  });
}
