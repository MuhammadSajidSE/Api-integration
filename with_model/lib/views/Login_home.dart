import 'package:flutter/material.dart';
class LoginHome extends StatelessWidget {
  final String? tokens;
   LoginHome({super.key, required String this.tokens});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Token: ${tokens}"),
      ),
    );
  }
}



