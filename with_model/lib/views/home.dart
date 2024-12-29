import 'package:flutter/material.dart';
import 'package:with_model/controllers/post_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    fetchPOst();
  }
  Future<void> fetchPOst() async {
    await getsinglepostapi();
    setState(() {
      bodyvalue = single_model.body.toString();
      titlevalue = single_model.title.toString();
    });
  }
  String bodyvalue = " ";
  String titlevalue = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API INTEGERATION"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("Hello Muhammad Sajid"),
          ),
          Center(child: Text("Body: ${bodyvalue}")),
          Center(child: Text("title: ${titlevalue}"))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        // await getsinglepostapi();
        // setState(() {
        //   bodyvalue = single_model.body.toString();
        //   titlevalue = single_model.title.toString();
        // });
      }),
    );
  }
}
