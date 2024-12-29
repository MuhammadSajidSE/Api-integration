import 'package:flutter/material.dart';
import 'package:with_model/controllers/login_post.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            "Login Screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: "Enter Email", hintStyle: TextStyle(fontSize: 20)),
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(fontSize: 20)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.red),
              child:  Center(
                child: InkWell(
                  onTap: () {
                    login_post_controller(
                        email.text.toString(), password.text.toString(),context);
                  },
                  child: const Text(
                    "Login",
                    style:  TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
